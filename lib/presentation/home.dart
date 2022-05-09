

import 'package:flutter/material.dart';
import 'package:temeflutter/container/auth/user_container.dart';
import 'package:temeflutter/models/auth/app_user.dart';
import 'package:temeflutter/presentation/home_page.dart';
import 'package:temeflutter/presentation/login/logn_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
        builder: (BuildContext context, AppUser user){

          if(user == null){
            return const LoginPage();
          }else{
            return const MyHomePage(title: 'Filme');
          }
        }
    );
  }
}
