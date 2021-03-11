import 'package:flutter/material.dart';
import 'package:delivery_app/screens/loginForm.dart';

class AuthScreen extends StatelessWidget {
  static const String id = 'login_screen';
  static const appendTitle = 'CONNEXION';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "GOTHAM FOOD DELIVERY",
            style: TextStyle(
                fontFamily: "Prata",
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Color(0xFFFFC400)),
          centerTitle: true,
          toolbarHeight: 70.0,
        ),
        body: Stack(
          children: [LoginForm()],
        ));
  }
}
