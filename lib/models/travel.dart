import 'package:flutter/material.dart';

class Travel {
  final String name;
  final String location;
  final String image;

  Travel(this.name, this.location, this.image);

  static List<Travel> generateTravel() {
    return [
      Travel("Travel 1", "location 1", "assets/images/top1.jpg"),
      Travel("Travel 2", "location 2", "assets/images/top2.jpg"),
      Travel("Travel 3", "location 3", "assets/images/top3.jpg"),
      Travel("Travel 4", "location 4", "assets/images/top4.jpg"),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel("Most Popular 1", "Most 1", "assets/images/bottom1.jpg"),
      Travel("Most Popular 2", "Most 2", "assets/images/bottom2.jpg"),
      Travel("Most Popular 3", "Most 3", "assets/images/bottom3.jpg"),
      Travel("Most Popular 4", "Most 4", "assets/images/bottom4.jpg"),
    ];
  }
}
