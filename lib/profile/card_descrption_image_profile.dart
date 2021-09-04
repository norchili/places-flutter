import 'package:flutter/material.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class CardDescriptionImageProfile extends StatelessWidget {
  String pathImage;
  String title;
  String description;
  int stepsCount;

  CardDescriptionImageProfile(
      this.pathImage, this.title, this.description, this.stepsCount);

  @override
  Widget build(BuildContext context) {
    final _title = Text(
      title,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );

    final _description = Text(
      description,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 10.0,
        color: Colors.black38,
      ),
    );

    final _stepsCount = Text(
      stepsCount.toString(),
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12.0,
          color: Colors.orangeAccent,
          fontWeight: FontWeight.bold),
    );

    final detailsCard = Container(
        margin:
            EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[_title, _description, _stepsCount],
        ));

    final card = Container(
      height: 250.0,
      width: 150.0,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: detailsCard,
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}
