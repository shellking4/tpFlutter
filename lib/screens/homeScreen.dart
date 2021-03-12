import 'package:delivery_app/utils/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/utils/appBar.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: MyAppBar.getAppBar(context, 56),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
