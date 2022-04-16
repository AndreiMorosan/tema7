// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of quality_action;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QualityTearOff {
  const _$QualityTearOff();

  QualityMovie call(String quality) {
    return QualityMovie(
      quality,
    );
  }
}

/// @nodoc
const $Quality = _$QualityTearOff();

/// @nodoc
mixin _$Quality {
  String get quality => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QualityCopyWith<Quality> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualityCopyWith<$Res> {
  factory $QualityCopyWith(Quality value, $Res Function(Quality) then) =
      _$QualityCopyWithImpl<$Res>;
  $Res call({String quality});
}

/// @nodoc
class _$QualityCopyWithImpl<$Res> implements $QualityCopyWith<$Res> {
  _$QualityCopyWithImpl(this._value, this._then);

  final Quality _value;
  // ignore: unused_field
  final $Res Function(Quality) _then;

  @override
  $Res call({
    Object? quality = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $QualityMovieCopyWith<$Res> implements $QualityCopyWith<$Res> {
  factory $QualityMovieCopyWith(
          QualityMovie value, $Res Function(QualityMovie) then) =
      _$QualityMovieCopyWithImpl<$Res>;
  @override
  $Res call({String quality});
}

/// @nodoc
class _$QualityMovieCopyWithImpl<$Res> extends _$QualityCopyWithImpl<$Res>
    implements $QualityMovieCopyWith<$Res> {
  _$QualityMovieCopyWithImpl(
      QualityMovie _value, $Res Function(QualityMovie) _then)
      : super(_value, (v) => _then(v as QualityMovie));

  @override
  QualityMovie get _value => super._value as QualityMovie;

  @override
  $Res call({
    Object? quality = freezed,
  }) {
    return _then(QualityMovie(
      quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QualityMovie implements QualityMovie {
  const _$QualityMovie(this.quality);

  @override
  final String quality;

  @override
  String toString() {
    return 'Quality(quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QualityMovie &&
            const DeepCollectionEquality().equals(other.quality, quality));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quality));

  @JsonKey(ignore: true)
  @override
  $QualityMovieCopyWith<QualityMovie> get copyWith =>
      _$QualityMovieCopyWithImpl<QualityMovie>(this, _$identity);
}

abstract class QualityMovie implements Quality {
  const factory QualityMovie(String quality) = _$QualityMovie;

  @override
  String get quality;
  @override
  @JsonKey(ignore: true)
  $QualityMovieCopyWith<QualityMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
