// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateRegisterInfoTearOff {
  const _$UpdateRegisterInfoTearOff();

  _UpdateRegisterInfo$ call(
      {String? email, String? password, String? displayName}) {
    return _UpdateRegisterInfo$(
      email: email,
      password: password,
      displayName: displayName,
    );
  }
}

/// @nodoc
const $UpdateRegisterInfo = _$UpdateRegisterInfoTearOff();

/// @nodoc
mixin _$UpdateRegisterInfo {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateRegisterInfoCopyWith<UpdateRegisterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRegisterInfoCopyWith<$Res> {
  factory $UpdateRegisterInfoCopyWith(
          UpdateRegisterInfo value, $Res Function(UpdateRegisterInfo) then) =
      _$UpdateRegisterInfoCopyWithImpl<$Res>;
  $Res call({String? email, String? password, String? displayName});
}

/// @nodoc
class _$UpdateRegisterInfoCopyWithImpl<$Res>
    implements $UpdateRegisterInfoCopyWith<$Res> {
  _$UpdateRegisterInfoCopyWithImpl(this._value, this._then);

  final UpdateRegisterInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegisterInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateRegisterInfo$CopyWith<$Res>
    implements $UpdateRegisterInfoCopyWith<$Res> {
  factory _$UpdateRegisterInfo$CopyWith(_UpdateRegisterInfo$ value,
          $Res Function(_UpdateRegisterInfo$) then) =
      __$UpdateRegisterInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? password, String? displayName});
}

/// @nodoc
class __$UpdateRegisterInfo$CopyWithImpl<$Res>
    extends _$UpdateRegisterInfoCopyWithImpl<$Res>
    implements _$UpdateRegisterInfo$CopyWith<$Res> {
  __$UpdateRegisterInfo$CopyWithImpl(
      _UpdateRegisterInfo$ _value, $Res Function(_UpdateRegisterInfo$) _then)
      : super(_value, (v) => _then(v as _UpdateRegisterInfo$));

  @override
  _UpdateRegisterInfo$ get _value => super._value as _UpdateRegisterInfo$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_UpdateRegisterInfo$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateRegisterInfo$ implements _UpdateRegisterInfo$ {
  const _$_UpdateRegisterInfo$({this.email, this.password, this.displayName});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'UpdateRegisterInfo(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateRegisterInfo$ &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(displayName));

  @JsonKey(ignore: true)
  @override
  _$UpdateRegisterInfo$CopyWith<_UpdateRegisterInfo$> get copyWith =>
      __$UpdateRegisterInfo$CopyWithImpl<_UpdateRegisterInfo$>(
          this, _$identity);
}

abstract class _UpdateRegisterInfo$ implements UpdateRegisterInfo {
  const factory _UpdateRegisterInfo$(
      {String? email,
      String? password,
      String? displayName}) = _$_UpdateRegisterInfo$;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$UpdateRegisterInfo$CopyWith<_UpdateRegisterInfo$> get copyWith =>
      throw _privateConstructorUsedError;
}
