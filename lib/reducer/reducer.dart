

import 'package:redux/redux.dart';
import 'package:temeflutter/actions/genre_action.dart';
import 'package:temeflutter/actions/movie_search.dart';
import 'package:temeflutter/actions/quality_action.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/data/movie_api.dart';


Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
   TypedReducer<AppState, MovieSearch>(_getSearchMovie),
  TypedReducer<AppState, MovieSearchSuccesful>(_getSearchMovieSuccesful),
  TypedReducer<AppState, MovieSearchError>(_getSearchMovieError),
  TypedReducer<AppState, GenreMovie>(_getGenreMovie),
  TypedReducer<AppState ,QualityMovie>(_getQualityMovie),
]);

AppState _getSearchMovie(AppState state, MovieSearch action){
   return state.rebuild((b) =>{
     b.isLoading = true
   });
}

AppState _getSearchMovieSuccesful(AppState state, MovieSearchSuccesful action){
  return state.rebuild((b) =>{
  b..isLoading = false
  ..movies.addAll(action.movie)
  });
}

AppState _getSearchMovieError(AppState state, MovieSearchError action){
  return state.rebuild((b) =>{
  b.isLoading = false
  });
}

AppState _getGenreMovie(AppState state, GenreMovie action){
  return state.rebuild((b) =>{
    b.movies.clear(),
  b.genre = action.genre
  });
}

AppState _getQualityMovie(AppState state, QualityMovie action){
  return state.rebuild((b) =>{
    b.movies.clear(),
  b.quality = action.quality,

  });
}


// AppState reducer(AppState state, dynamic action){
//    final AppStateBuilder builder = state.toBuilder();
//
//    if(action is MovieSearch){
//      builder.isLoading=true;
//    }else if(action is MovieSearchSuccesful){
//      builder.isLoading = false;
//      builder.movies.addAll(action.movie);
//    }else if(action is MovieSearchError){
//      builder.isLoading = false;
//    }
//
//    return builder.build();
//
// }