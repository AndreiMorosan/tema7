
import 'package:redux_epics/redux_epics.dart';
import 'package:temeflutter/actions/movie_search.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/movie.dart';

class AppEpics {
  const AppEpics({required MovieApi searchMovie})
      :assert(searchMovie != null),
        _searchMovie = searchMovie;


  final MovieApi _searchMovie;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, MovieSearch>(_getMoviesSearch),
    ]);
  }

  Stream<dynamic> _getMoviesSearch(Stream<MovieSearch> actions,
      EpicStore<AppState> store) {
    return actions.asyncMap((MovieSearch action) async =>
        _searchMovie.getMovies(store.state.genre, store.state.quality)).map((
        List<Movie> movies) => MovieSearch.succesful(movies)).handleError((
        dynamic error) => MovieSearch.error(error));
  }
}