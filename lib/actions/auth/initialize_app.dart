
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/models/auth/app_user.dart';

part 'initialize_app.freezed.dart';

@freezed
abstract class InitializeApp with _$InitializeApp implements AppAction{
  const factory InitializeApp() = InitializeApp$;

  const factory InitializeApp.succesful(AppUser user) = InitializeAppSuccesful;


  const factory InitializeApp.error(Object error) = InitializeAppError;
}