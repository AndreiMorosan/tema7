
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:temeflutter/actions/movies/movie_search.dart';
import 'package:temeflutter/data/movie_api.dart';
import 'package:temeflutter/epics/app_epics.dart';
import 'package:temeflutter/models/app_state.dart';
import 'package:temeflutter/presentation/home_page.dart';
import 'package:temeflutter/presentation/login/logn_page.dart';
import 'package:temeflutter/presentation/login/reset_page.dart';
import 'package:temeflutter/presentation/mixin/init_mixin.dart';
import 'package:temeflutter/presentation/register/name_page.dart';
import 'package:temeflutter/presentation/register/password_page.dart';
import 'package:temeflutter/presentation/register/register_page.dart';
import 'package:temeflutter/reducer/reducer.dart';

import 'presentation/home.dart';

void main() {
  runApp(const Filme());
}
// ignore: camel_cases_types
class Filme extends StatefulWidget {
  const Filme({Key? key}) : super(key: key);

  @override
  State<Filme> createState() => _filmeState();
}

class _filmeState extends State<Filme> with InitMixin<Filme>{



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot){

          if(snapshot.hasData){
            final Store<AppState> store = snapshot.data!;
            return StoreProvider(
              store: store,
              child: MaterialApp(
                title: 'Filme Clone',
                initialRoute: '/',
                routes: {
                  '/login' : (context) => const LoginPage(),
                  '/register': (context) => const RegisterPage(),
                  '/namepage': (context) => const NamePage(),
                  '/passwordpage': (context) => const PasswordPage(),
                  '/resetpassword': (context) => const ResetPasswordPage(),
                },
                theme: ThemeData(
                    appBarTheme: AppBarTheme(
                      elevation: 0.0,
                      color: Colors.white,
                    )
                ),
                home: const Home(),
              ),
            );
          }else if(snapshot.hasError){

          }

          return MaterialApp(
            title: 'Filme',
            theme: ThemeData.light(),
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );

        }
    );
  }
}

