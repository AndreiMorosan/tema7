


import 'package:redux/redux.dart';
import 'package:temeflutter/actions/movies/genre_action.dart';
import 'package:temeflutter/actions/movies/movie_search.dart';
import 'package:temeflutter/actions/movies/quality_action.dart';
import 'package:temeflutter/models/movie/movie_state.dart';

Reducer<MovieState> moviesReducer = combineReducers(<Reducer<MovieState>>[
  TypedReducer<MovieState, MovieSearchStart>(_getSearchMovie),
  TypedReducer<MovieState, MovieSearchSuccesful>(_getSearchMovieSuccesful),
  TypedReducer<MovieState, MovieSearchError>(_getSearchMovieError),
  TypedReducer<MovieState, GenreMovie>(_getGenreMovie),
  TypedReducer<MovieState ,QualityMovie>(_getQualityMovie),

]);



MovieState _getSearchMovie(MovieState state, MovieSearch action){
  return state.rebuild((b) =>{
    b.isLoading = true
  });
}

MovieState _getSearchMovieSuccesful(MovieState state, MovieSearchSuccesful action){
  return state.rebuild((b) =>{
    b..isLoading = false
      ..movies.addAll(action.movie)
  });
}

MovieState _getSearchMovieError(MovieState state, MovieSearchError action){
  return state.rebuild((b) =>{
    b.isLoading = false
  });
}

MovieState _getGenreMovie(MovieState state, GenreMovie action){
  return state.rebuild((b) =>{
    b.movies.clear(),
    b.genre = action.genre
  });
}

MovieState _getQualityMovie(MovieState state, QualityMovie action){
  return state.rebuild((b) =>{
    b.movies.clear(),
    b.quality = action.quality,

  });
}
