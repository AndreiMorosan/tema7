
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:temeflutter/models/auth/app_user.dart';
import 'package:temeflutter/models/auth/register_info.dart';
import 'package:temeflutter/models/serializers.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {

  factory AuthState([void Function(AuthStateBuilder)? updates]) = _$AuthState;
  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer,json)!;

  factory AuthState.initialState(){
    return _$AuthState();
  }

  AuthState._();

  AppUser? get user;

  RegisterInfo get info;

  Map<String, dynamic> get json => serializers.serializeWith(serializer,this) as Map<String,dynamic>;

  static Serializer<AuthState> get serializer =>_$authStateSerializer;


}