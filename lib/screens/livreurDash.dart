import 'package:delivery_app/utils/appBar.dart';
import 'package:delivery_app/utils/bottomNavBar.dart';
import 'package:flutter/material.dart';

class LivreurDash extends StatefulWidget {
  LivreurDash({Key key}) : super(key: key);
  static final String id = "livreur_dash";
  @override
  _LivreurDashState createState() => _LivreurDashState();
}

class _LivreurDashState extends State<LivreurDash> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: MyAppBar.getAppBar(context, 10),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
