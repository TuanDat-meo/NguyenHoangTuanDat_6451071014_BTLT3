import 'package:flutter/gestures.dart';

class PointerPositionModel {
  double x;
  double y;
  PointerDeviceKind? kind;
  bool isActive;

  PointerPositionModel({
    this.x = 0.0,
    this.y = 0.0,
    this.kind,
    this.isActive = false,
  });

  void update(PointerEvent event) {
    x = event.position.dx;
    y = event.position.dy;
    kind = event.kind;
    isActive = true;
  }

  void clear() {
    isActive = false;
  }
}
