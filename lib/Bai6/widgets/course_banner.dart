import 'package:flutter/material.dart';

class CourseBanner extends StatelessWidget {
  final String imageUrl;

  const CourseBanner({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      height: 220,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          height: 220,
          color: Colors.blue[50],
          child: const Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (context, error, stackTrace) => Container(
        height: 220,
        color: Colors.blue[100],
        child: const Center(
          child: Icon(Icons.code, size: 80, color: Colors.blue),
        ),
      ),
    );
  }
}
