

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/auth/register.dart';
import 'package:temeflutter/actions/auth/set.dart';
import 'package:temeflutter/actions/index.dart';
import 'package:temeflutter/presentation/mixin/dialog_mixin.dart';

import '../../models/app_state.dart';

class PasswordPage extends StatelessWidget with DialogMixin {
  const PasswordPage({Key? key}) : super(key: key);

  void _onResponse(BuildContext context ,AppAction action) {
    if (action is RegisterSuccesful){
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }else if(action is RegisterError){
      showError(context, 'Register Error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Form(
              child: Builder(
                builder: (BuildContext context){
                  return Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'password',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value){

                          StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(password: value));
                        },
                        validator: (String? value){
                          if(value!.length < 6){
                            return 'Please enter a better password';
                          }
                          return null;
                        },
                      ),

                      const Divider(),

                      const Spacer(),

                      TextButton(child: const Text('Register'),
                        onPressed: (){

                          if(Form.of(context)!.validate()){
                            StoreProvider.of<AppState>(context).dispatch(Register((AppAction action){
                              _onResponse(context, action);
                            }));
                          }

                        },
                      ),

                      const Divider(),

                      const Text.rich(TextSpan(
                        text: "Already have an account?",
                      ),
                      ),
                      TextButton(child: const Text('Login'),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: (){
                          Navigator.popUntil(context, ModalRoute.withName('/login'));
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
