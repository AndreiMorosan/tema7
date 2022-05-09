
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/auth/forgot_password.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/presentation/mixin/dialog_mixin.dart';

import '../../models/app_state.dart';

class ResetPasswordPage extends StatefulWidget{
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> with DialogMixin {
  String email = '';

  void response(AppAction action){
    if(action is LoginError){
      showError(context,"Login error", action.error);
    }
  }

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

                      ButtonBar(
                        children: <Widget>[
                          FloatingActionButton(child: const Text("Reset Password"),
                              onPressed: (){
                                StoreProvider.of<AppState>(context).dispatch(ForgotPassword(email));
                              }
                          ),
                        ],
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
