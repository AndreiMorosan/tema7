// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of movie_search;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieSearchTearOff {
  const _$MovieSearchTearOff();

  MovieSearchStart call() {
    return const MovieSearchStart();
  }

  MovieSearchSuccesful succesful(List<Movie> movie) {
    return MovieSearchSuccesful(
      movie,
    );
  }

  MovieSearchError error(dynamic e) {
    return MovieSearchError(
      e,
    );
  }
}

/// @nodoc
const $MovieSearch = _$MovieSearchTearOff();

/// @nodoc
mixin _$MovieSearch {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movie) succesful,
    required TResult Function(dynamic e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MovieSearchStart value) $default, {
    required TResult Function(MovieSearchSuccesful value) succesful,
    required TResult Function(MovieSearchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchCopyWith<$Res> {
  factory $MovieSearchCopyWith(
          MovieSearch value, $Res Function(MovieSearch) then) =
      _$MovieSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieSearchCopyWithImpl<$Res> implements $MovieSearchCopyWith<$Res> {
  _$MovieSearchCopyWithImpl(this._value, this._then);

  final MovieSearch _value;
  // ignore: unused_field
  final $Res Function(MovieSearch) _then;
}

/// @nodoc
abstract class $MovieSearchStartCopyWith<$Res> {
  factory $MovieSearchStartCopyWith(
          MovieSearchStart value, $Res Function(MovieSearchStart) then) =
      _$MovieSearchStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieSearchStartCopyWithImpl<$Res>
    extends _$MovieSearchCopyWithImpl<$Res>
    implements $MovieSearchStartCopyWith<$Res> {
  _$MovieSearchStartCopyWithImpl(
      MovieSearchStart _value, $Res Function(MovieSearchStart) _then)
      : super(_value, (v) => _then(v as MovieSearchStart));

  @override
  MovieSearchStart get _value => super._value as MovieSearchStart;
}

/// @nodoc

class _$MovieSearchStart implements MovieSearchStart {
  const _$MovieSearchStart();

  @override
  String toString() {
    return 'MovieSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieSearchStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movie) succesful,
    required TResult Function(dynamic e) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MovieSearchStart value) $default, {
    required TResult Function(MovieSearchSuccesful value) succesful,
    required TResult Function(MovieSearchError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MovieSearchStart implements MovieSearch {
  const factory MovieSearchStart() = _$MovieSearchStart;
}

/// @nodoc
abstract class $MovieSearchSuccesfulCopyWith<$Res> {
  factory $MovieSearchSuccesfulCopyWith(MovieSearchSuccesful value,
          $Res Function(MovieSearchSuccesful) then) =
      _$MovieSearchSuccesfulCopyWithImpl<$Res>;
  $Res call({List<Movie> movie});
}

/// @nodoc
class _$MovieSearchSuccesfulCopyWithImpl<$Res>
    extends _$MovieSearchCopyWithImpl<$Res>
    implements $MovieSearchSuccesfulCopyWith<$Res> {
  _$MovieSearchSuccesfulCopyWithImpl(
      MovieSearchSuccesful _value, $Res Function(MovieSearchSuccesful) _then)
      : super(_value, (v) => _then(v as MovieSearchSuccesful));

  @override
  MovieSearchSuccesful get _value => super._value as MovieSearchSuccesful;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(MovieSearchSuccesful(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MovieSearchSuccesful implements MovieSearchSuccesful {
  const _$MovieSearchSuccesful(this.movie);

  @override
  final List<Movie> movie;

  @override
  String toString() {
    return 'MovieSearch.succesful(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieSearchSuccesful &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  $MovieSearchSuccesfulCopyWith<MovieSearchSuccesful> get copyWith =>
      _$MovieSearchSuccesfulCopyWithImpl<MovieSearchSuccesful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movie) succesful,
    required TResult Function(dynamic e) error,
  }) {
    return succesful(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
  }) {
    return succesful?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MovieSearchStart value) $default, {
    required TResult Function(MovieSearchSuccesful value) succesful,
    required TResult Function(MovieSearchError value) error,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class MovieSearchSuccesful implements MovieSearch {
  const factory MovieSearchSuccesful(List<Movie> movie) =
      _$MovieSearchSuccesful;

  List<Movie> get movie;
  @JsonKey(ignore: true)
  $MovieSearchSuccesfulCopyWith<MovieSearchSuccesful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchErrorCopyWith<$Res> {
  factory $MovieSearchErrorCopyWith(
          MovieSearchError value, $Res Function(MovieSearchError) then) =
      _$MovieSearchErrorCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class _$MovieSearchErrorCopyWithImpl<$Res>
    extends _$MovieSearchCopyWithImpl<$Res>
    implements $MovieSearchErrorCopyWith<$Res> {
  _$MovieSearchErrorCopyWithImpl(
      MovieSearchError _value, $Res Function(MovieSearchError) _then)
      : super(_value, (v) => _then(v as MovieSearchError));

  @override
  MovieSearchError get _value => super._value as MovieSearchError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(MovieSearchError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$MovieSearchError implements MovieSearchError {
  const _$MovieSearchError(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'MovieSearch.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieSearchError &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $MovieSearchErrorCopyWith<MovieSearchError> get copyWith =>
      _$MovieSearchErrorCopyWithImpl<MovieSearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movie) succesful,
    required TResult Function(dynamic e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movie)? succesful,
    TResult Function(dynamic e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MovieSearchStart value) $default, {
    required TResult Function(MovieSearchSuccesful value) succesful,
    required TResult Function(MovieSearchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MovieSearchStart value)? $default, {
    TResult Function(MovieSearchSuccesful value)? succesful,
    TResult Function(MovieSearchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieSearchError implements MovieSearch {
  const factory MovieSearchError(dynamic e) = _$MovieSearchError;

  dynamic get e;
  @JsonKey(ignore: true)
  $MovieSearchErrorCopyWith<MovieSearchError> get copyWith =>
      throw _privateConstructorUsedError;
}
