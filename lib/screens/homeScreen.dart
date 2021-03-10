import 'package:delivery_app/utils/bottomNavBar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 70.0,
            title: Row(
              children: <Widget>[
                SizedBox(width: 56.0),
                Text(
                  "GOTHAM FOOD DELIVERY",
                  style: TextStyle(
                      fontSize: 14.0,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Prata"),
                ),
              ],
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
