
import 'package:redux_epics/redux_epics.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/actions/movies/movie_search.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/movie/movie.dart';
import 'package:temeflutter/models/movie/movie_state.dart';

class MovieEpics{
  const MovieEpics({required MovieApi searchMovie})
      :assert(searchMovie != null),
        _searchMovie = searchMovie;


  final MovieApi _searchMovie;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, MovieSearchStart>(_getMoviesSearch),
    ]);
  }

  Stream<AppAction> _getMoviesSearch(Stream<MovieSearchStart> actions,
      EpicStore<AppState> store) {
    return actions.asyncMap((MovieSearch action) async =>
        _searchMovie.getMovies(store.state.movies.genre, store.state.movies.quality)).map((
        List<Movie> movies) => MovieSearch.succesful(movies)).handleError((
        dynamic error) => MovieSearch.error(error));
  }
}