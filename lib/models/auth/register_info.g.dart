// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterInfo> _$registerInfoSerializer =
    new _$RegisterInfoSerializer();

class _$RegisterInfoSerializer implements StructuredSerializer<RegisterInfo> {
  @override
  final Iterable<Type> types = const [RegisterInfo, _$RegisterInfo];
  @override
  final String wireName = 'RegisterInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegisterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegisterInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterInfo extends RegisterInfo {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? displayName;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder)? updates]) =>
      (new RegisterInfoBuilder()..update(updates)).build();

  _$RegisterInfo._({this.email, this.password, this.displayName}) : super._();

  @override
  RegisterInfo rebuild(void Function(RegisterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInfoBuilder toBuilder() => new RegisterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInfo &&
        email == other.email &&
        password == other.password &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, email.hashCode), password.hashCode), displayName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterInfo')
          ..add('email', email)
          ..add('password', password)
          ..add('displayName', displayName))
        .toString();
  }
}

class RegisterInfoBuilder
    implements Builder<RegisterInfo, RegisterInfoBuilder> {
  _$RegisterInfo? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _displayName = $v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInfo;
  }

  @override
  void update(void Function(RegisterInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterInfo build() {
    final _$result = _$v ??
        new _$RegisterInfo._(
            email: email, password: password, displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
