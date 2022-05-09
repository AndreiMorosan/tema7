// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

  Login$ call({required String email, required String password}) {
    return Login$(
      email: email,
      password: password,
    );
  }

  LoginSuccesful succesful(AppUser appUser) {
    return LoginSuccesful(
      appUser,
    );
  }

  LoginError error(StateError error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccesful value) succesful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(Login$(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Login$ implements Login$ {
  const _$Login$({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Login$ &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return $default?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccesful value) succesful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$({required String email, required String password}) =
      _$Login$;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $Login$CopyWith<Login$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccesfulCopyWith<$Res> {
  factory $LoginSuccesfulCopyWith(
          LoginSuccesful value, $Res Function(LoginSuccesful) then) =
      _$LoginSuccesfulCopyWithImpl<$Res>;
  $Res call({AppUser appUser});
}

/// @nodoc
class _$LoginSuccesfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccesfulCopyWith<$Res> {
  _$LoginSuccesfulCopyWithImpl(
      LoginSuccesful _value, $Res Function(LoginSuccesful) _then)
      : super(_value, (v) => _then(v as LoginSuccesful));

  @override
  LoginSuccesful get _value => super._value as LoginSuccesful;

  @override
  $Res call({
    Object? appUser = freezed,
  }) {
    return _then(LoginSuccesful(
      appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$LoginSuccesful implements LoginSuccesful {
  const _$LoginSuccesful(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'Login.succesful(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginSuccesful &&
            const DeepCollectionEquality().equals(other.appUser, appUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appUser));

  @JsonKey(ignore: true)
  @override
  $LoginSuccesfulCopyWith<LoginSuccesful> get copyWith =>
      _$LoginSuccesfulCopyWithImpl<LoginSuccesful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return succesful(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return succesful?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
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
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccesful value) succesful,
    required TResult Function(LoginError value) error,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccesful implements Login {
  const factory LoginSuccesful(AppUser appUser) = _$LoginSuccesful;

  AppUser get appUser;
  @JsonKey(ignore: true)
  $LoginSuccesfulCopyWith<LoginSuccesful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoginError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StateError,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError(this.error);

  @override
  final StateError error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser appUser) succesful,
    required TResult Function(StateError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser appUser)? succesful,
    TResult Function(StateError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
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
    TResult Function(Login$ value) $default, {
    required TResult Function(LoginSuccesful value) succesful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Login$ value)? $default, {
    TResult Function(LoginSuccesful value)? succesful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login {
  const factory LoginError(StateError error) = _$LoginError;

  StateError get error;
  @JsonKey(ignore: true)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}
