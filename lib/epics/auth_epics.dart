
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:temeflutter/actions/auth/forgot_password.dart';
import 'package:temeflutter/actions/auth/initialize_app.dart';
import 'package:temeflutter/actions/auth/logout.dart';
import 'package:temeflutter/actions/auth/register.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/actions/movies/movie_search.dart';
import 'package:temeflutter/data/auth_api.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/auth/app_user.dart';

class AuthEpics{

  AuthEpics({required AuthApi authApi})
      :assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics{
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, Register$>(_register),
      TypedEpic<AppState, Logout$>(_logout),
      TypedEpic<AppState, ForgotPassword$>(_forgotPassword),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store){
    return actions.flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action).asyncMap((InitializeApp$ e) => _authApi.initializeApp())
        .expand((AppUser user) => <AppAction>[InitializeApp.succesful(user),const MovieSearch()]).handleError((dynamic error)=> InitializeApp.error(error)));

  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store){
    return actions.flatMap((Login$ action) => Stream<Login$>.value(action).asyncMap((Login$ action) => _authApi.login(email: action.email, password: action.password))
        .expand((AppUser user) => <AppAction>[Login.succesful(user),const MovieSearch()]).handleError((dynamic error) => Login.error(error)));

  }

  Stream<AppAction> _register(Stream<Register$> actions, EpicStore<AppState> store){
    return actions.flatMap((Register$ action) => Stream<Register$>.value(action).asyncMap((e) => _authApi.register(email: store.state.auth.info.email!, password: store.state.auth.info.password!,displayName: store.state.auth.info.displayName!))
        .expand((AppUser user) => <AppAction>[Register.succesful(user),const MovieSearch()]).handleError((dynamic error) => Register.error(error)).doOnData(action.response));


  }

  Stream<AppAction> _logout(Stream<Logout$> actions, EpicStore<AppState> store){
    return actions.flatMap((Logout$ action) => Stream<Logout$>.value(action).asyncMap((Logout$ action) =>
        _authApi.logOut())
        .map((_) => const Logout.succesful()).handleError((dynamic error) => Logout.error(error)));
  }

  Stream<AppAction> _forgotPassword(Stream<ForgotPassword$> actions, EpicStore<AppState> store){
    return actions.flatMap((ForgotPassword$ action) => Stream<ForgotPassword$>.value(action).asyncMap((ForgotPassword$ action) =>
        _authApi.forgotPassword(action.email))
        .map((_) => const ForgotPassword.succesful()).handleError((dynamic error) => ForgotPassword.error(error)));
  }

}