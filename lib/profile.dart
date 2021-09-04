//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'profile/card_image_with_description.dart';

class Profile extends StatelessWidget {
  Place bacalar = new Place(
      "images/bacalar.jpg",
      "Bacalar, Quintana Roo",
      "Lagoon, stories of pirates, temples and architecture of Mayan, Blue Cenote, snorkeling, diving, boat ride and swimming await you.",
      345896);

  Place creel = new Place(
      "images/creel.jpg",
      "Creel, Chihuahua",
      "Sierra Tarahumara. Forests, waterfalls, caves, nature, cable car, Rarámuri culture, magical town, wood art, the copper canyons.",
      456986);

  Place sanCristobalDeLasCasas = new Place(
      "images/san_cristobal_de_las_casas.jpg",
      "San Cristobal de las Casas, Chiapas",
      "It is among trees and dense evils and fresh mist, colonial buildings, traditions and festivals, squares, temples and buildings, Huitepec Reserve, El Arcotete, ecotourism park, Chanfaina and amaranth are part of its typical foods.",
      978563);

  Place taxco = new Place(
      "images/taxco.jpg",
      "Taxco, Guerrero",
      "The soil of this town is its greatest virtue, where a large amount of silver comes from, earning the name of “The Silver Capital of the World”. Crafts with this precious metal range from earrings to large designs, made by the hands of its people. It retains its viceregal touch, like the Temple of Santa Prisca. Taxco belongs to the tourist area of ​​the “sun triangle”. In 2002, it was granted the status of a magical town, being only the third to be recognized in this way. Art, captivating streets and alleys give you the history of this place, where you can find the “four winds” inn. Among the activities is knowing its 15 historical monuments and if you are of exotic tastes get ready to eat the famous jumiles.",
      785653);

  Place xilitla = new Place(
      "images/xilitla.jpg",
      "Xilitla, San Luis Potosi",
      "Pride of America awaits you to discover the only surreal garden on the continent, as well as being full of natural beauty. Exotic vegetation, sculptures inspired by magical symbols and waterfalls up to 70 meters high. It was declared a magical town in 2011, water abounds since it is the rainiest place in San Luis Potosí. Little industrialized, which has contributed to preserving indigenous cultures. Piloncillo and coffee work are basic. The Temple and former Augustinian convent, the Tincuilín canyon can be seen from the El Paraíso inn, the Tlamaya basement and the salt cave are places to visit. Enjoy the exquisite music and Huastecan dances.",
      103405);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 120.0),
      children: <Widget>[
        CardImageWithDescription(bacalar.pathImageOfPlace, bacalar.namePlace,
            bacalar.descriptionPlace, bacalar.stepsCount),
        CardImageWithDescription(creel.pathImageOfPlace, creel.namePlace,
            creel.descriptionPlace, creel.stepsCount),
        CardImageWithDescription(
            sanCristobalDeLasCasas.pathImageOfPlace,
            sanCristobalDeLasCasas.namePlace,
            sanCristobalDeLasCasas.descriptionPlace,
            sanCristobalDeLasCasas.stepsCount),
        CardImageWithDescription(taxco.pathImageOfPlace, taxco.namePlace,
            taxco.descriptionPlace, taxco.stepsCount),
        CardImageWithDescription(xilitla.pathImageOfPlace, xilitla.namePlace,
            xilitla.descriptionPlace, xilitla.stepsCount)
      ],
    );
  }
}

class Place {
  late String pathImageOfPlace;
  late String namePlace;
  late String descriptionPlace;
  late int stepsCount;

  Place(this.pathImageOfPlace, this.namePlace, this.descriptionPlace,
      this.stepsCount);
}
