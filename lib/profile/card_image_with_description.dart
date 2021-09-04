import 'package:flutter/material.dart';
import 'card_descrption_image_profile.dart';

class CardImageWithDescription extends StatelessWidget {
  String pathImageOfPlace;
  String namePlace;
  String descriptionPlace;
  int stepsCount;

  CardImageWithDescription(this.pathImageOfPlace, this.namePlace,
      this.descriptionPlace, this.stepsCount);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 200.0,
      //width: 300.0,
      margin: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(pathImageOfPlace)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.0, 1.5),
      children: <Widget>[
        card,
        CardDescriptionImageProfile(namePlace, descriptionPlace, stepsCount)
      ],
    );
  }
}
