
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:temeflutter/actions/movie_search.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/epics/app_epics.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/presentation/home_page.dart';
import 'package:temeflutter/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final api = MovieApi(client: client);
  final epics = AppEpics(searchMovie: api);
  final AppState initialState = AppState.initiate();
  final Store<AppState> store = Store<AppState>(reducer,
  initialState: initialState,
  middleware:<Middleware<AppState>>[
    EpicMiddleware<AppState>(epics.epics),
  ]
  );

   store.dispatch(const MovieSearch());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,required this.store}) : super(key: key);

   final Store<AppState> store;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store:store,
      child: MaterialApp(
        title: 'TEMA7',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'TEMA 7'),
      ),
    );
  }
}


