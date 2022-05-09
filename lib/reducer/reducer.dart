
import 'package:redux/redux.dart';
import 'package:temeflutter/actions/auth/logout.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/reducer/auth_reducer.dart';
import 'package:temeflutter/reducer/movies_reducer.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, LogoutSuccesful>(_logoutSuccesfull),
]);

AppState _reducer (AppState state, dynamic action){
  print(action);
  return state.rebuild((AppStateBuilder b) {
    return  b..auth = authReducer(state.auth,action).toBuilder()
      ..movies = moviesReducer(state.movies,action).toBuilder();

  });

}

AppState _logoutSuccesfull (AppState state, dynamic action){
  return AppState.initialState();
}