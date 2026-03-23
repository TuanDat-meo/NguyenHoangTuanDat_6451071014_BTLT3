import 'package:flutter/material.dart';

class DraggableCircleWidget extends StatelessWidget {
  final double radius;
  final Color color;

  const DraggableCircleWidget({
    super.key,
    this.radius = 50,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      child: const Icon(Icons.drag_indicator, color: Colors.white, size: 28),
    );
  }
}
