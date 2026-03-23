import 'package:flutter/material.dart';

class ColorModel {
  Color current;
  final List<Color> colors;

  ColorModel({
    required this.current,
    required this.colors,
  });

  Color toggle() {
    final idx = colors.indexOf(current);
    current = colors[(idx + 1) % colors.length];
    return current;
  }
}
