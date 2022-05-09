
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';

part 'forgot_password.freezed.dart';

@freezed
abstract class ForgotPassword with _$ForgotPassword implements AppAction{
  const factory ForgotPassword(String email) = ForgotPassword$;

  const factory ForgotPassword.succesful() = ForgotPasswordSuccesful;


  const factory ForgotPassword.error(Object error) = ForgotPasswordError;
}