import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  final reviewBrook = new Review(
      "images/brook.jpeg",
      "Brook",
      "3 review - 15 photos",
      "No importa cuán oscura sea la noche. Al final, siempre se acabará haciendo de día.");
  final reviewLuffy = new Review(
      "images/luffy.jpg",
      "Luffy",
      "5 review - 1 photos",
      "Olvidar es como una herida. La herida puede sanar pero deja una cicatriz.");
  final reviewRobin = new Review(
      "images/robin.jpg",
      "Robin",
      "19 review - 25 photos",
      "Ante un corazón sincero, no hay necesidad de palabras.");
  final reviewSmoker = new Review(
      "images/smoker.jpg",
      "Smoker",
      "1 review - 2 photos",
      "¡No pienses que hay una sociedad perfecta hecha por humanos! ¡Si piensas de esa manera pasarás por alto al enemigo! ¡Que no te engañen las apariencias!");
  final reviewZoro = new Review(
      "images/zoro.png",
      "Zoro",
      "29 review - 55 photos",
      "No me importa lo que diga la sociedad. Me he arrepentido de hacer cualquier cosa. Sobreviviré y haré lo que quiera hacer.");

  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: <Widget>[
        reviewBrook,
        reviewLuffy,
        reviewRobin,
        reviewSmoker,
        reviewZoro
      ],
    );

    return reviewList;
  }
}
