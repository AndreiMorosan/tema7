import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';

part 'logout.freezed.dart';

@freezed
abstract class Logout with _$Logout implements AppAction{
  const factory Logout() = Logout$;

  const factory Logout.succesful() = LogoutSuccesful;


  const factory Logout.error(Object error) = LogoutError;
}