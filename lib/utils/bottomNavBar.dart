import 'package:delivery_app/screens/authScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: new Icon(Icons.mail), label: "Mail"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Connexion")
        ],
        onTap: (currentIndex) {
          if (currentIndex == 2) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AuthScreen()));
          }
        });
  }
}
