// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

  Register$ call(ActionResponse response) {
    return Register$(
      response,
    );
  }

  RegisterSuccesful succesful(AppUser appUser) {
    return RegisterSuccesful(
      appUser,
    );
  }

  RegisterError error(StateError error) {
    return RegisterError(
      error,
    );
  }
}

/// @nodoc
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccesful value) succesful,
    required TResult Function(RegisterError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;
}

/// @nodoc
abstract class $Register$CopyWith<$Res> {
  factory $Register$CopyWith(Register$ value, $Res Function(Register$) then) =
      _$Register$CopyWithImpl<$Res>;
  $Res call({ActionResponse response});
}

/// @nodoc
class _$Register$CopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $Register$CopyWith<$Res> {
  _$Register$CopyWithImpl(Register$ _value, $Res Function(Register$) _then)
      : super(_value, (v) => _then(v as Register$));

  @override
  Register$ get _value => super._value as Register$;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(Register$(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$Register$ implements Register$ {
  const _$Register$(this.response);

  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'Register(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Register$ &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  $Register$CopyWith<Register$> get copyWith =>
      _$Register$CopyWithImpl<Register$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return $default?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccesful value) succesful,
    required TResult Function(RegisterError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Register$ implements Register {
  const factory Register$(ActionResponse response) = _$Register$;

  ActionResponse get response;
  @JsonKey(ignore: true)
  $Register$CopyWith<Register$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSuccesfulCopyWith<$Res> {
  factory $RegisterSuccesfulCopyWith(
          RegisterSuccesful value, $Res Function(RegisterSuccesful) then) =
      _$RegisterSuccesfulCopyWithImpl<$Res>;
  $Res call({AppUser appUser});
}

/// @nodoc
class _$RegisterSuccesfulCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterSuccesfulCopyWith<$Res> {
  _$RegisterSuccesfulCopyWithImpl(
      RegisterSuccesful _value, $Res Function(RegisterSuccesful) _then)
      : super(_value, (v) => _then(v as RegisterSuccesful));

  @override
  RegisterSuccesful get _value => super._value as RegisterSuccesful;

  @override
  $Res call({
    Object? appUser = freezed,
  }) {
    return _then(RegisterSuccesful(
      appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$RegisterSuccesful implements RegisterSuccesful {
  const _$RegisterSuccesful(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'Register.succesful(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterSuccesful &&
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appUser));

  @JsonKey(ignore: true)
  @override
  $RegisterSuccesfulCopyWith<RegisterSuccesful> get copyWith =>
      _$RegisterSuccesfulCopyWithImpl<RegisterSuccesful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return succesful(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return succesful?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccesful value) succesful,
    required TResult Function(RegisterError value) error,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccesful implements Register {
  const factory RegisterSuccesful(AppUser appUser) = _$RegisterSuccesful;

  AppUser get appUser;
  @JsonKey(ignore: true)
  $RegisterSuccesfulCopyWith<RegisterSuccesful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$RegisterErrorCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(
      RegisterError _value, $Res Function(RegisterError) _then)
      : super(_value, (v) => _then(v as RegisterError));

  @override
  RegisterError get _value => super._value as RegisterError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RegisterError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StateError,
    ));
  }
}

/// @nodoc

class _$RegisterError implements RegisterError {
  const _$RegisterError(this.error);

  @override
  final StateError error;

  @override
  String toString() {
    return 'Register.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
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
    TResult Function(Register$ value) $default, {
    required TResult Function(RegisterSuccesful value) succesful,
    required TResult Function(RegisterError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Register$ value)? $default, {
    TResult Function(RegisterSuccesful value)? succesful,
    TResult Function(RegisterError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements Register {
  const factory RegisterError(StateError error) = _$RegisterError;

  StateError get error;
  @JsonKey(ignore: true)
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}
