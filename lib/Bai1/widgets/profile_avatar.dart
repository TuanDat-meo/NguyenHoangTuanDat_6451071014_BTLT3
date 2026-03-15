import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;

  const ProfileAvatar({
    super.key,
    required this.imagePath,
    this.radius = 70,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
