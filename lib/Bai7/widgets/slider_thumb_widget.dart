import 'package:flutter/material.dart';

class SliderThumbWidget extends StatelessWidget {
  final bool isDragging;
  const SliderThumbWidget({super.key, this.isDragging = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: isDragging ? 30 : 24,
      height: isDragging ? 30 : 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: isDragging ? Colors.pink.shade700 : Colors.pink,
          width: isDragging ? 3 : 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(isDragging ? 0.5 : 0.3),
            blurRadius: isDragging ? 12 : 6,
            spreadRadius: isDragging ? 3 : 1,
          ),
        ],
      ),
    );
  }
}
