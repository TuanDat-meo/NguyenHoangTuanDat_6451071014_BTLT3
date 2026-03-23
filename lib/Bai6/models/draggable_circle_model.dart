import 'package:flutter/material.dart';

class DraggableCircleModel {
  Offset position;
  final double radius;

  DraggableCircleModel({
    required this.position,
    this.radius = 50.0,
  });

  void moveTo(Offset delta) {
    position = position + delta;
  }

  void clampTo(Size screenSize) {
    final dx = position.dx.clamp(radius, screenSize.width - radius);
    final dy = position.dy.clamp(radius, screenSize.height - radius);
    position = Offset(dx, dy);
  }
}
