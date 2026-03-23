import 'package:flutter/material.dart';

const List<Color> kItemColors = [
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.teal,
];

Color getItemColor(int colorIndex) {
  return kItemColors[colorIndex % kItemColors.length];
}

IconData getItemIcon(int colorIndex) {
  const icons = [
    Icons.star,
    Icons.favorite,
    Icons.bolt,
    Icons.cloud,
    Icons.local_fire_department,
    Icons.eco,
  ];
  return icons[colorIndex % icons.length];
}
