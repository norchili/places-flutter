import 'package:flutter/material.dart';

class IconSettings extends StatelessWidget {
  IconSettings();

  @override
  Widget build(BuildContext context) {
    final settingsIcon = Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 50.0, right: 20.0),
      child: Icon(
        Icons.settings,
        size: 20.0,
        color: Colors.white70,
      ),
    );

    return settingsIcon;
  }
}
