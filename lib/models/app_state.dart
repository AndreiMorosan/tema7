

library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:temeflutter/models/movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState,AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;

  factory AppState.initiate(){
    final AppStateBuilder appStateBuilder = AppStateBuilder();
    appStateBuilder..isLoading = true
    ..genre = "All"..quality = "All";
    return appStateBuilder.build();
  }

  AppState._();

  String get genre;

  String get quality;

  BuiltList<Movie> get movies;


  bool get isLoading;


}