
import 'package:built_value/serializer.dart';
import 'package:temeflutter/models/serializers.dart';
import 'package:built_value/built_value.dart';

part 'app_user.g.dart';

abstract class AppUser implements Built<AppUser, AppUserBuilder> {

  factory AppUser([void Function(AppUserBuilder)? updates]) = _$AppUser;
  factory AppUser.fromJson(dynamic json) => serializers.deserializeWith(serializer,json)!;

  factory AppUser.initialState(){
    return _$AppUser();
  }

  AppUser._();

  String get uid;

  String get email;

  String get displayName;


  String? get photoUrl;


  Map<String, dynamic> get json => serializers.serializeWith(serializer,this) as Map<String,dynamic>;

  static Serializer<AppUser> get serializer =>_$appUserSerializer;


}