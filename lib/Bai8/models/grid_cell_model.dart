import 'package:flutter/material.dart';

class GridCellModel {
  final int index;
  bool isSelected;
  Color selectedColor;

  GridCellModel({
    required this.index,
    this.isSelected = false,
    required this.selectedColor,
  });

  void toggle() => isSelected = !isSelected;
}

final List<Color> kCellColors = [
  Colors.red.shade400,
  Colors.orange.shade400,
  Colors.yellow.shade600,
  Colors.green.shade400,
  Colors.cyan.shade400,
  Colors.blue.shade400,
  Colors.indigo.shade400,
  Colors.purple.shade400,
  Colors.pink.shade400,
];
