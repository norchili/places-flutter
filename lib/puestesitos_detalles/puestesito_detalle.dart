import 'package:flutter/material.dart';

class PuestesitoDetalle extends StatelessWidget {
  String pathLogo = "images/logopuesto1.png";

  String _namePuesto;
  String _descripcionPuesto;

  PuestesitoDetalle(this.pathLogo, this._namePuesto, this._descripcionPuesto);

  @override
  Widget build(BuildContext context) {
    final imageLogo = Container(
      margin: EdgeInsets.only(left: 10.0, top: 20.0),
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathLogo))),
    );

    final namePuesto = Container(
      margin: EdgeInsets.only(left: 10.0, top: 20.0),
      child: Text(
        _namePuesto,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );

    final descripcionPuesto = Container(
      margin: EdgeInsets.only(left: 10.0, top: 10.0),
      child: Text(
        _descripcionPuesto,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            //fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );

    final detallePuesto = Flexible(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[namePuesto, descripcionPuesto],
    ));

    final iconForward = Container(
      margin: EdgeInsets.only(left: 25.0, top: 20.0, right: 20.0),
      height: 20.0,
      width: 20.0,
      child: Icon(Icons.arrow_forward_ios_rounded),
      //decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisSize: MainAxisSize.max,
      children: <Widget>[imageLogo, detallePuesto, iconForward],
    );
  }
}
