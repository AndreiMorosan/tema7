

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/auth/set.dart';
import 'package:temeflutter/container/auth/register_info_container.dart';
import 'package:temeflutter/models/auth/register_info.dart';

import '../../models/app_state.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {


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
                      RegisterInfoContainer(
                        builder: (BuildContext context, RegisterInfo value){
                          return TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'name',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            initialValue: value.email?.split('@')[0],
                            onChanged: (String value){

                              StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(displayName: value));
                            },
                            validator: (String? value){
                              if(value!.isEmpty){
                                return 'Please enter a name';
                              }
                              return null;
                            },
                          );
                        }
                      ),

                      const Divider(),

                      const Spacer(),

                      TextButton(child: const Text('Register'),
                        onPressed: (){

                          if(Form.of(context)!.validate()){
                            Navigator.pushNamed(context, '/passwordpage');
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