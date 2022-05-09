

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/models/auth/app_user.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key? key,required this.builder}) : super(key: key);
  final ViewModelBuilder<AppUser> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser>
      (converter: (Store<AppState>store) => store.state.auth.user!,
        builder: builder,);
  }
}
