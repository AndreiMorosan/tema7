import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:temeflutter/models/movie/movie.dart';
import 'package:temeflutter/models/serializers.dart';

part 'movie_state.g.dart';

abstract class MovieState implements Built<MovieState,MovieStateBuilder> {
  factory MovieState(
      [void Function(MovieStateBuilder)? updates]) = _$MovieState;

  factory MovieState.initialState(){
    final MovieStateBuilder movieStateBuilder = MovieStateBuilder();
    movieStateBuilder
      ..isLoading = true
      ..genre = "All"
      ..quality = "All";
    return movieStateBuilder.build();
  }

  MovieState._();

  String get genre;

  String get quality;

  BuiltList<Movie> get movies;


  bool get isLoading;

  Map<String, dynamic> get json => serializers.serializeWith(serializer,this) as Map<String,dynamic>;

  static Serializer<MovieState> get serializer =>_$movieStateSerializer;
}
