import 'package:delivery_app/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/screens/registerForm.dart';

import 'authScreen.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'register_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar.getAppBar(context, 1),
        body: Stack(
          children: <Widget>[
            RegisterForm(),
          ],
        ));
  }
}
