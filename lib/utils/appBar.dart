import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  static PreferredSizeWidget getAppBar(
      BuildContext context, double sizedBoxWidth) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return AppBar(
      toolbarHeight: 70.0,
      title: Row(
        children: <Widget>[
          SizedBox(width: sizedBoxWidth),
          Text(
            "GOTHAM DELIVERY SERVICES",
            style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
                fontFamily: "Prata"),
          ),
        ],
      ),
      //centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {}
}
