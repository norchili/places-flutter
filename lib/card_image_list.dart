import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("images/one_piece.png"),
          CardImage("images/robin.jpg"),
          CardImage("images/brook.jpeg"),
          CardImage("images/luffy.jpg"),
          CardImage("images/smoker.jpg"),
          CardImage("images/zoro.png")
        ],
      ),
    );
  }
}
