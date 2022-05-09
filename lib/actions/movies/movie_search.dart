
library movie_search;


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/models/movie/movie.dart';

part 'movie_search.freezed.dart';


@freezed
abstract class MovieSearch with _$MovieSearch implements AppAction{

  const factory MovieSearch() = MovieSearchStart;
  const factory MovieSearch.succesful(List<Movie> movie) = MovieSearchSuccesful;
  const factory MovieSearch.error(dynamic e) = MovieSearchError;
}

