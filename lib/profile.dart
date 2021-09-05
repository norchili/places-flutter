//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/profile/image_with_description_list.dart';
import 'package:platzi_trips_app/profile/menu_icons.dart';
import 'package:platzi_trips_app/profile/profile_user_info.dart';
import 'package:platzi_trips_app/profile/settings_icon.dart';

class Profile extends StatelessWidget {
  String urlUserPhoto = "https://i.imgur.com/fXCT7X7.jpg";
  String userName = "Norberto Aguilar Ramírez";
  String userEmail = "norchilipeper@hotmail.com";
  //"drive.google.com/uc?export=view&id=13FB-uSReC01w84Voqmr7TXTijVvioep5";

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GradientBack("Profile"),
      Container(
          //height: 100.0,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 100.0),
          child: ProfileUserInfo(urlUserPhoto, userName, userEmail)),
      IconSettings(),
      Menu(),
      Container(
          margin: EdgeInsets.only(top: 280.0),
          child: ListView(
            //padding: EdgeInsets.only(bottom: 120.0),
            children: <Widget>[
              ImageWithDescriptionList(),
            ],
          ))
    ]);
  }
}
