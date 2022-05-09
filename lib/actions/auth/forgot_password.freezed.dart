// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordTearOff {
  const _$ForgotPasswordTearOff();

  ForgotPassword$ call(String email) {
    return ForgotPassword$(
      email,
    );
  }

  ForgotPasswordSuccesful succesful() {
    return const ForgotPasswordSuccesful();
  }

  ForgotPasswordError error(Object error) {
    return ForgotPasswordError(
      error,
    );
  }
}

/// @nodoc
const $ForgotPassword = _$ForgotPasswordTearOff();

/// @nodoc
mixin _$ForgotPassword {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() succesful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccesful value) succesful,
    required TResult Function(ForgotPasswordError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(this._value, this._then);

  final ForgotPassword _value;
  // ignore: unused_field
  final $Res Function(ForgotPassword) _then;
}

/// @nodoc
abstract class $ForgotPassword$CopyWith<$Res> {
  factory $ForgotPassword$CopyWith(
          ForgotPassword$ value, $Res Function(ForgotPassword$) then) =
      _$ForgotPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ForgotPassword$CopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPassword$CopyWith<$Res> {
  _$ForgotPassword$CopyWithImpl(
      ForgotPassword$ _value, $Res Function(ForgotPassword$) _then)
      : super(_value, (v) => _then(v as ForgotPassword$));

  @override
  ForgotPassword$ get _value => super._value as ForgotPassword$;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ForgotPassword$(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPassword$ implements ForgotPassword$ {
  const _$ForgotPassword$(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPassword$ &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith =>
      _$ForgotPassword$CopyWithImpl<ForgotPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() succesful,
    required TResult Function(Object error) error,
  }) {
    return $default(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
  }) {
    return $default?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccesful value) succesful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword$ implements ForgotPassword {
  const factory ForgotPassword$(String email) = _$ForgotPassword$;

  String get email;
  @JsonKey(ignore: true)
  $ForgotPassword$CopyWith<ForgotPassword$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordSuccesfulCopyWith<$Res> {
  factory $ForgotPasswordSuccesfulCopyWith(ForgotPasswordSuccesful value,
          $Res Function(ForgotPasswordSuccesful) then) =
      _$ForgotPasswordSuccesfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordSuccesfulCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordSuccesfulCopyWith<$Res> {
  _$ForgotPasswordSuccesfulCopyWithImpl(ForgotPasswordSuccesful _value,
      $Res Function(ForgotPasswordSuccesful) _then)
      : super(_value, (v) => _then(v as ForgotPasswordSuccesful));

  @override
  ForgotPasswordSuccesful get _value => super._value as ForgotPasswordSuccesful;
}

/// @nodoc

class _$ForgotPasswordSuccesful implements ForgotPasswordSuccesful {
  const _$ForgotPasswordSuccesful();

  @override
  String toString() {
    return 'ForgotPassword.succesful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPasswordSuccesful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() succesful,
    required TResult Function(Object error) error,
  }) {
    return succesful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
  }) {
    return succesful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccesful value) succesful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccesful implements ForgotPassword {
  const factory ForgotPasswordSuccesful() = _$ForgotPasswordSuccesful;
}

/// @nodoc
abstract class $ForgotPasswordErrorCopyWith<$Res> {
  factory $ForgotPasswordErrorCopyWith(
          ForgotPasswordError value, $Res Function(ForgotPasswordError) then) =
      _$ForgotPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ForgotPasswordErrorCopyWithImpl<$Res>
    extends _$ForgotPasswordCopyWithImpl<$Res>
    implements $ForgotPasswordErrorCopyWith<$Res> {
  _$ForgotPasswordErrorCopyWithImpl(
      ForgotPasswordError _value, $Res Function(ForgotPasswordError) _then)
      : super(_value, (v) => _then(v as ForgotPasswordError));

  @override
  ForgotPasswordError get _value => super._value as ForgotPasswordError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ForgotPasswordError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordError implements ForgotPasswordError {
  const _$ForgotPasswordError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'ForgotPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith =>
      _$ForgotPasswordErrorCopyWithImpl<ForgotPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email) $default, {
    required TResult Function() succesful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email)? $default, {
    TResult Function()? succesful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ForgotPassword$ value) $default, {
    required TResult Function(ForgotPasswordSuccesful value) succesful,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ForgotPassword$ value)? $default, {
    TResult Function(ForgotPasswordSuccesful value)? succesful,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements ForgotPassword {
  const factory ForgotPasswordError(Object error) = _$ForgotPasswordError;

  Object get error;
  @JsonKey(ignore: true)
  $ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith =>
      throw _privateConstructorUsedError;
}
