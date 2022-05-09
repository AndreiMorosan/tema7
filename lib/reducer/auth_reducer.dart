

import 'package:redux/redux.dart';
import 'package:temeflutter/actions/auth/initialize_app.dart';
import 'package:temeflutter/actions/auth/login.dart';
import 'package:temeflutter/actions/auth/register.dart';
import 'package:temeflutter/actions/auth/set.dart';
import 'package:temeflutter/models/auth/auth_state.dart';
import 'package:temeflutter/models/auth/register_info.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccesful>(_initializeApp),
  TypedReducer<AuthState, LoginSuccesful>(_loginSuccesful),
  TypedReducer<AuthState, RegisterSuccesful>(_registerSuccesful),
  TypedReducer<AuthState, UpdateRegisterInfo>(_updateRegisterInfo),
]);

AuthState _loginSuccesful (AuthState state, LoginSuccesful action){
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.appUser.toBuilder();
  });
}

AuthState _initializeApp (AuthState state, InitializeAppSuccesful action){
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.user.toBuilder();
  });
}

AuthState _registerSuccesful (AuthState state, RegisterSuccesful action){
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.appUser.toBuilder();
  });
}

AuthState _updateRegisterInfo (AuthState state, UpdateRegisterInfo action){
  return state.rebuild((AuthStateBuilder b) {

    if (action.email != null){
      b.info.email = action.email;
    }else if (action.password != null){
      b.info.password = action.password;
    }else if (action.displayName != null){
      b.info.displayName = action.displayName;
    }else{
      b.info = RegisterInfo().toBuilder();
    }


  });
}
