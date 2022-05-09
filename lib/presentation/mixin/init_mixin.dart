import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/streams.dart';
import 'package:temeflutter/init/init.dart';
import 'package:temeflutter/models/app_state.dart';


mixin InitMixin<S extends StatefulWidget> on State<S>{
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    // TODO: implement initState
    _initStore();
  }

  Future<void>  _initStore() async{

    final List<dynamic> result = await ConcatStream<dynamic>(<Stream<dynamic>>[
      init().asStream(),
      Future<void>.delayed(const Duration(seconds: 3)).asStream(),
    ]).toList();



    _completer.complete(result[0]);
  }

  Future<Store<AppState>> get future => _completer.future;
}