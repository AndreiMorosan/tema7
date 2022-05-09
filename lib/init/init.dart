

import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:temeflutter/data/auth_api.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/epics/app_epics.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:temeflutter/reducer/reducer.dart';

import '../actions/auth/initialize_app.dart';
Future <Store<AppState>> init() async{
  await Firebase.initializeApp();

  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  final  Client client = Client();
  final FirebaseAuth auth = FirebaseAuth.instance;

  final AuthApi authApi = AuthApi(auth: auth, firestore: fireStore);
  final MovieApi movieApi = MovieApi(client: client);

  final AppEpics epics = AppEpics(authApi: authApi, movieApi:movieApi );
  final AppState initialState = AppState.initialState();
  return Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  )..dispatch(const InitializeApp());
}