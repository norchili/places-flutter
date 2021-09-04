import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    //Widget star

    final starHalf = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    var starsDecimal = stars % 1;
    var starsInt = stars - starsDecimal;
    List<Widget> starsTotal = [];

    if (stars > 0 && stars <= 5) {
      for (var i = 1; i <= starsInt; i++) {
        starsTotal.add(star);
      }

      var wihtBorder = 5 - starsInt;

      if (starsDecimal < 1 && starsDecimal > 0) {
        starsTotal.add(starHalf);
        wihtBorder--;
      }

      for (var i = 1; i <= wihtBorder; i++) {
        starsTotal.add(starBorder);
      }
    } else {
      for (var i = 0; i < 5; i++) {
        starsTotal.add(starBorder);
      }
    }

    //Widget Descripcion

    final description = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          color: Color(0xFF56575a),
        ),
      ),
    );

    //Widget Titulo y estrellas

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        Row(
          children: starsTotal,
        )
      ],
    );

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[titleStars, description, ButtonPurple("Navigate")]);
  }
}
