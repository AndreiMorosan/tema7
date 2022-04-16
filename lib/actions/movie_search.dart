
library movie_search;


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/models/movie.dart';

part 'movie_search.freezed.dart';


@freezed
abstract class MovieSearch with _$MovieSearch{

  const factory MovieSearch() = MovieSearchStart;
  const factory MovieSearch.succesful(List<Movie> movie) = MovieSearchSuccesful;
  const factory MovieSearch.error(dynamic e) = MovieSearchError;
}

