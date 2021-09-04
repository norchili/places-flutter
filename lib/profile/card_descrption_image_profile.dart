import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class CardDescriptionImageProfile extends StatelessWidget {
  String namePlace;
  String descriptionPlace;
  int stepsCount;

  CardDescriptionImageProfile(
      this.namePlace, this.descriptionPlace, this.stepsCount);

  @override
  Widget build(BuildContext context) {
    var formatNumber = new NumberFormat("###,###,###");

    String stepsCountFormatted = formatNumber.format(stepsCount);

    final _title = Text(
      namePlace,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );

    final _description = Text(
      descriptionPlace,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 10.0,
        color: Colors.black38,
      ),
    );

    final _stepsCount = Text(
      "Steps  $stepsCountFormatted",
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: 12.0,
          color: Colors.orangeAccent,
          fontWeight: FontWeight.bold),
    );

    final detailsCard = Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[_title, _description, _stepsCount],
        ));

    final card = Container(
      alignment: Alignment.center,
      height: 100.0,
      width: 250.0,
      decoration: BoxDecoration(
          color: Colors.white,
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
      alignment: Alignment(0.9, 1.5),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}
