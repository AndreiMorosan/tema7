

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/models/auth/app_user.dart';

part 'login.freezed.dart';

@freezed
abstract class Login with _$Login implements AppAction{
  const factory Login({required String email, required String password}) = Login$;

  const factory Login.succesful(AppUser appUser) = LoginSuccesful;


  const factory Login.error(StateError error) = LoginError;
}