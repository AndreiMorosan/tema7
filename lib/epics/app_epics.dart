
import 'package:redux_epics/redux_epics.dart';

import 'package:temeflutter/data/auth_api.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/epics/auth_epics.dart';
import 'package:temeflutter/epics/movie_epics.dart';
import 'package:temeflutter/models/app_state.dart';


class AppEpics {
  AppEpics({required AuthApi authApi,required MovieApi movieApi})
      :assert(authApi != null,),
        assert(movieApi != null),
        _authApi = authApi,
        _movieApi = movieApi;

  final AuthApi _authApi;
  final MovieApi _movieApi;


  Epic<AppState> get epics{
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi: _authApi).epics,
      MovieEpics(searchMovie: _movieApi).epics,
    ]);
  }
}