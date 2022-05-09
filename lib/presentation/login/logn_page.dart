



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/auth/login.dart';

import '../../models/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const  EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context){
                return Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value){
                        email = value;
                      },
                      validator: (String? value){
                        if(!value!.contains('@') || !value.contains('.')){
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),

                    const Divider(),

                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'password',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value){
                        password = value;
                      },
                      validator: (String? value){
                        if(value!.length<6){
                          return 'Please try a better password';
                        }
                        return null;
                      },
                    ),

                    const Divider(),

                    ButtonBar(
                      children: <Widget>[
                       FloatingActionButton(child: const Text("Reset Password"),
                           onPressed: (){
                             Navigator.pushNamed(context,"/resetpassword");
                           }
                       ),
                      ],
                    ),

                    const Spacer(),
                    TextButton(child: const Text('Login'),
                      onPressed: (){

                        if(Form.of(context)!.validate()){
                          StoreProvider.of<AppState>(context).dispatch(Login(email: email, password: password));
                        }

                      },
                    ),

                    const Divider(),

                    const Text.rich(TextSpan(
                      text: "Don't have an account?",
                        ),
                    ),
                    TextButton(child: const Text('Register'),
                      style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                      onPressed: (){
                          Navigator.pushNamed(context, '/register');

                      },
                    ),
                  ],
                );
              },
            )
          ),
        ),
      ),
    );
  }
}
