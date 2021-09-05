import 'package:flutter/material.dart';

class ProfileUserInfo extends StatelessWidget {
  String urlPhoto;
  String name;
  String email;

  ProfileUserInfo(this.urlPhoto, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
      //alignment: Alignment.center,
      margin: EdgeInsets.only(left: 30.0, right: 10.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  Image.network(urlPhoto).image) //Image.network(urlUserPhoto),
          ),
      /*child: Image.network(
        urlUserPhoto,
        fit: BoxFit.cover,
      ),*/
    );

    final _name = Container(
        margin: EdgeInsets.all(2.0),
        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              //fontWeight: FontWeight.bold,
              color: Colors.white),
        ));

    final _email = Container(
        margin: EdgeInsets.all(2.0),
        child: Text(
          email,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.0,
              //fontWeight: FontWeight.bold,
              color: Colors.white60),
        ));

    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          userPhoto,
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[_name, _email])
        ]);
  }
}
