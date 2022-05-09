// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieState> _$movieStateSerializer = new _$MovieStateSerializer();

class _$MovieStateSerializer implements StructuredSerializer<MovieState> {
  @override
  final Iterable<Type> types = const [MovieState, _$MovieState];
  @override
  final String wireName = 'MovieState';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'quality',
      serializers.serialize(object.quality,
          specifiedType: const FullType(String)),
      'movies',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  MovieState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'quality':
          result.quality = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieState extends MovieState {
  @override
  final String genre;
  @override
  final String quality;
  @override
  final BuiltList<Movie> movies;
  @override
  final bool isLoading;

  factory _$MovieState([void Function(MovieStateBuilder)? updates]) =>
      (new MovieStateBuilder()..update(updates)).build();

  _$MovieState._(
      {required this.genre,
      required this.quality,
      required this.movies,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(genre, 'MovieState', 'genre');
    BuiltValueNullFieldError.checkNotNull(quality, 'MovieState', 'quality');
    BuiltValueNullFieldError.checkNotNull(movies, 'MovieState', 'movies');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'MovieState', 'isLoading');
  }

  @override
  MovieState rebuild(void Function(MovieStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieStateBuilder toBuilder() => new MovieStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieState &&
        genre == other.genre &&
        quality == other.quality &&
        movies == other.movies &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, genre.hashCode), quality.hashCode), movies.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieState')
          ..add('genre', genre)
          ..add('quality', quality)
          ..add('movies', movies)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class MovieStateBuilder implements Builder<MovieState, MovieStateBuilder> {
  _$MovieState? _$v;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _quality;
  String? get quality => _$this._quality;
  set quality(String? quality) => _$this._quality = quality;

  ListBuilder<Movie>? _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie>? movies) => _$this._movies = movies;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  MovieStateBuilder();

  MovieStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genre = $v.genre;
      _quality = $v.quality;
      _movies = $v.movies.toBuilder();
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieState;
  }

  @override
  void update(void Function(MovieStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieState build() {
    _$MovieState _$result;
    try {
      _$result = _$v ??
          new _$MovieState._(
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, 'MovieState', 'genre'),
              quality: BuiltValueNullFieldError.checkNotNull(
                  quality, 'MovieState', 'quality'),
              movies: movies.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'MovieState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
