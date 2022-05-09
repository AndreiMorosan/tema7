// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of genre_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenreTearOff {
  const _$GenreTearOff();

  GenreMovie call(String genre) {
    return GenreMovie(
      genre,
    );
  }
}

/// @nodoc
const $Genre = _$GenreTearOff();

/// @nodoc
mixin _$Genre {
  String get genre => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res> implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  final Genre _value;
  // ignore: unused_field
  final $Res Function(Genre) _then;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GenreMovieCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory $GenreMovieCopyWith(
          GenreMovie value, $Res Function(GenreMovie) then) =
      _$GenreMovieCopyWithImpl<$Res>;
  @override
  $Res call({String genre});
}

/// @nodoc
class _$GenreMovieCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res>
    implements $GenreMovieCopyWith<$Res> {
  _$GenreMovieCopyWithImpl(GenreMovie _value, $Res Function(GenreMovie) _then)
      : super(_value, (v) => _then(v as GenreMovie));

  @override
  GenreMovie get _value => super._value as GenreMovie;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(GenreMovie(
      genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenreMovie implements GenreMovie {
  const _$GenreMovie(this.genre);

  @override
  final String genre;

  @override
  String toString() {
    return 'Genre(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenreMovie &&
            const DeepCollectionEquality().equals(other.genre, genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genre));

  @JsonKey(ignore: true)
  @override
  $GenreMovieCopyWith<GenreMovie> get copyWith =>
      _$GenreMovieCopyWithImpl<GenreMovie>(this, _$identity);
}

abstract class GenreMovie implements Genre {
  const factory GenreMovie(String genre) = _$GenreMovie;

  @override
  String get genre;
  @override
  @JsonKey(ignore: true)
  $GenreMovieCopyWith<GenreMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
