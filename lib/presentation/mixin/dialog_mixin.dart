import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin DialogMixin {

  Future<void> showError(BuildContext context, String title, Object error){

    if(Theme.of(context).platform == TargetPlatform.android){
      return showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Text('$error'),
          actions: <Widget>[
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text('Ok')),
          ],
        );
      },);
    }else{
      return showCupertinoDialog(context: context, builder: (BuildContext context){
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text('$error'),
          actions: <Widget>[
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text('Ok')),
          ],
        );
      },);
    }
  }
}