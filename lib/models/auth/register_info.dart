

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:temeflutter/models/serializers.dart';

part 'register_info.g.dart';

abstract class RegisterInfo implements Built<RegisterInfo, RegisterInfoBuilder> {

  factory RegisterInfo([void Function(RegisterInfoBuilder)? updates]) = _$RegisterInfo;
  factory RegisterInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer,json)!;

  factory RegisterInfo.initialState(){
    return _$RegisterInfo();
  }

  String? get email;
  String? get password;
  String? get displayName;

  RegisterInfo._();



  Map<String, dynamic> get json => serializers.serializeWith(serializer,this) as Map<String,dynamic>;

  static Serializer<RegisterInfo> get serializer =>_$registerInfoSerializer;


}