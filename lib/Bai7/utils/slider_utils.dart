import 'package:flutter/material.dart';

Color valueToColor(double normalized) {
  return Color.lerp(Colors.pink.shade200, Colors.pink.shade800, normalized)!;
}
