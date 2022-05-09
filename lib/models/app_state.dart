

library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:temeflutter/models/auth/auth_state.dart';
import 'package:temeflutter/models/movie/movie.dart';
import 'package:temeflutter/models/movie/movie_state.dart';
import 'package:temeflutter/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {

  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;
  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer,json)!;

  factory AppState.initialState(){
    return _$AppState((AppStateBuilder b){
      b.auth= AuthState.initialState().toBuilder();
      b.movies=MovieState.initialState().toBuilder();
    });
  }

  AppState._();


  AuthState get auth;

  MovieState get movies;

  Map<String, dynamic> get json => serializers.serializeWith(serializer,this) as Map<String,dynamic>;

  static Serializer<AppState> get serializer =>_$appStateSerializer;


}