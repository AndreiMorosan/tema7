



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temeflutter/actions/index.dart';

part "set.freezed.dart";

@freezed
abstract class UpdateRegisterInfo with _$UpdateRegisterInfo implements AppAction{

  const factory UpdateRegisterInfo({
    String? email,
    String? password,
    String? displayName,
}) = _UpdateRegisterInfo$;
}