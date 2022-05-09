
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/auth/set.dart';

import '../../models/app_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
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
                          hintText: 'email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String value){

                          StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(email: value));
                        },
                        validator: (String? value){
                          if(!value!.contains('@') || !value.contains('.')){
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),

                      const Divider(),

                      const Spacer(),

                      TextButton(child: const Text('Register'),
                        onPressed: (){

                          if(Form.of(context)!.validate()){
                              Navigator.pushNamed(context, '/namepage');
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