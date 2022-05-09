
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/models/auth/app_user.dart';

part 'register.freezed.dart';

@freezed
abstract class Register with _$Register implements AppAction{
  const factory Register(ActionResponse response) = Register$;

  const factory Register.succesful(AppUser appUser) = RegisterSuccesful;

  const factory Register.error(StateError error) = RegisterError;
}