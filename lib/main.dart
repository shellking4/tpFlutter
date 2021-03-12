import 'package:delivery_app/screens/authScreen.dart';
import 'package:delivery_app/screens/livreurDash.dart';
import 'package:delivery_app/screens/registerScreen.dart';
import 'package:delivery_app/screens/welcomeScreen.dart';
import 'package:delivery_app/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DeliveryApp());

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Color(0xFF29434e)),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        AuthScreen.id: (context) => AuthScreen(),
        RegisterScreen.id: (conext) => RegisterScreen(),
        LivreurDash.id: (context) => LivreurDash()
      },
    );
  }
}
