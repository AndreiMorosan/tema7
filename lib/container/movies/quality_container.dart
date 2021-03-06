


import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/movie/movie.dart';

class QualityContainer extends StatelessWidget {
  const QualityContainer({Key? key,required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector(builder: builder,
        converter: (Store<AppState> store){
          return store.state.movies.quality;
        }

    );
  }
}