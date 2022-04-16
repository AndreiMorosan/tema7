
library genre_action;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_action.freezed.dart';



@freezed
abstract class Genre with _$Genre{

  const factory Genre(String genre) = GenreMovie;
}