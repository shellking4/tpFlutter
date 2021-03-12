import 'package:delivery_app/screens/authScreen.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        iconSize: 24, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Mdi.homeOutline),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: new Icon(Mdi.cartOutline), label: ""),
          BottomNavigationBarItem(icon: Icon(Mdi.accountOutline), label: "")
        ],
        onTap: (currentIndex) {
          if (currentIndex == 2) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AuthScreen()));
          }
        });
  }
}
