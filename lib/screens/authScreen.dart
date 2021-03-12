import 'package:delivery_app/utils/appBar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/screens/loginForm.dart';

class AuthScreen extends StatelessWidget {
  final double size;
  static const String id = 'login_screen';

  const AuthScreen({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: (size == null)
            ? MyAppBar.getAppBar(context, 50)
            : MyAppBar.getAppBar(context, 3),
        body: Stack(
          children: [LoginForm()],
        ));
  }
}
