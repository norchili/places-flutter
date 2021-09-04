import 'package:flutter/material.dart';
import 'puestesito_detalle.dart';

class PuestesitosDetalleList extends StatelessWidget {
  String pathBackAppBar = "images/wave.png";
  String title = "Puestesitos";

  PuestesitosDetalleList();

  @override
  Widget build(BuildContext context) {
    final _appBarBackground = Container(
        height: 150.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(pathBackAppBar))),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold),
        ),
        alignment: Alignment(0.0, -0.4));

    final iconBack = Container(
      //margin: EdgeInsets.only(left: 10.0, top: 20.0),
      height: 10.0,
      width: 10.0,
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.white,
      ),
    );

    final _appBar = Stack(
      alignment: Alignment(-0.9, -0.4),
      children: <Widget>[_appBarBackground, iconBack],
    );

    return Stack(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 120.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new PuestesitoDetalle("images/logopuesto1.png", "Los Arbolitos",
                    "Venta de sodas, dulces, chilindrinas y papitas preparadas"),
                Divider(),
                new PuestesitoDetalle("images/logopuesto2.png", "La Guera",
                    "Venta de comida: Hamburguesas, Hot Dogs, Tortas"),
                Divider(),
                new PuestesitoDetalle("images/logopuesto3.png", "Barraza",
                    "Venta de tacos de tripitas, buche, burritos, tortas"),
                Divider(),
                new PuestesitoDetalle("images/logopuesto4.png", "Chico Malo",
                    "Venta de comida Pizzas, alitas, boneles, aros de cebolla"),
                Divider(),
                new PuestesitoDetalle("images/logopuesto5.png", "El tope",
                    "Venta de todo tipo de comida: alitas, tortas, hamburguesas, helados, nieve, raspas, campechanas..."),
                Divider(),
                new PuestesitoDetalle(
                    "images/logopuesto6.png",
                    "Mariscos El Tinaco",
                    "Venta de mariscos: cockteles de camara, tostadas de ceviche, sopa marinera, shot de ostion..."),
                Divider(),
                new PuestesitoDetalle("images/logopuesto7.png", "La Jaiba",
                    "Venta de mariscos: tosticeviches, cocktel de camarones, tostadas de ceviche, papitas preparadas..."),
                Divider(),
                new PuestesitoDetalle("images/logopuesto8.png", "Los Compadres",
                    "Venta de taquitos: al pastor, buche, tripitas, asada, alambre, chuleta ahumada..."),
                Divider(),
                new PuestesitoDetalle(
                    "images/logopuesto9.jpg",
                    "Maldonado Burguers",
                    "Venta de Hamburguesas, Tortas, Hot Dogs."),
                Divider(),
                new PuestesitoDetalle("images/logopuesto10.png", "Los Chávez",
                    "Venta de burritos, platillos..."),
                Divider()
              ],
            )),
        _appBar
      ],
    );
  }
}
