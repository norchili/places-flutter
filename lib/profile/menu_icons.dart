import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final add = Container(
      //alignment: Alignment.topRight,
      //margin: EdgeInsets.only(left: 50.0, right: 20.0),
      padding: EdgeInsets.all(5.0),
      //color: Colors.white,
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        Icons.add,
        size: 40.0,
        color: Colors.black54,
      ),
    );

    final mail = Container(
      //alignment: Alignment.topRight,
      //margin: EdgeInsets.only(left: 50.0, right: 20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
      child: Icon(
        Icons.mail_outline,
        size: 20.0,
        color: Colors.black54,
      ),
    );

    final person = Container(
      //alignment: Alignment.topRight,
      //margin: EdgeInsets.only(left: 50.0, right: 20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
      child: Icon(
        Icons.person_pin_circle,
        size: 20.0,
        color: Colors.black54,
      ),
    );

    final bookmark = Container(
      //alignment: Alignment.topRight,
      //margin: EdgeInsets.only(left: 50.0, right: 20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
      child: Icon(
        Icons.bookmark_border,
        size: 20.0,
        color: Colors.black54,
      ),
    );

    final giftCard = Container(
      //alignment: Alignment.topRight,
      //margin: EdgeInsets.only(left: 50.0, right: 20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
      child: Icon(
        Icons.card_giftcard,
        size: 20.0,
        color: Colors.black54,
      ),
    );

    return Container(
        margin: EdgeInsets.only(top: 200.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[bookmark, giftCard, add, mail, person],
        ));
  }
}
