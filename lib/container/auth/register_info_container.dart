
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/auth/register_info.dart';

class RegisterInfoContainer extends StatelessWidget {
  const RegisterInfoContainer({Key? key,required this.builder}) : super(key: key);
  final ViewModelBuilder<RegisterInfo> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegisterInfo>
      (converter: (Store<AppState>store) => store.state.auth.info,
      builder: builder,);
  }
}