import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "images/one_piece.png";
  String name = "Varuna Yasas";
  String details = "1 review - 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details,
      this.comment); //Constructor inicializar la clase

  @override
  Widget build(BuildContext context) {
    // Foto de usuario

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    //Detalles Usuario

    final userName = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 2.0),
        child: Text(
          name,
          style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
        ));

    final userInfoText = Container(
      margin: EdgeInsets.only(left: 20.0, right: 10.0, bottom: 2.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final stars = Container(
      margin: EdgeInsets.only(right: 1.0),
      child: Icon(
        Icons.star,
        size: 15.0,
        color: Color(0xFFF2C611),
      ),
    );

    final userInfoStars = Row(
      children: <Widget>[stars, stars, stars, stars, stars],
    );

    final userInfo = Row(
      children: <Widget>[userInfoText, userInfoStars],
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 12.0, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    ));

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
