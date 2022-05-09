
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temeflutter/models/app_state.dart';


class GenreContainer extends StatelessWidget {
  const GenreContainer({Key? key,required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector(builder: builder,
        converter: (Store<AppState> store){
          return store.state.movies.genre;
        }

    );
  }
}