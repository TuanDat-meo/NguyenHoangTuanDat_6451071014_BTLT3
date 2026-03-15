import 'package:flutter/material.dart';
import '../models/photo_model.dart';

class PhotoItem extends StatelessWidget {
  final PhotoModel photo;

  const PhotoItem({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        photo.imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return Container(
            color: Colors.grey[200],
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          );
        },
        errorBuilder: (_, _, _) => Container(
          color: Colors.grey[300],
          child: const Icon(Icons.broken_image, color: Colors.grey, size: 40),
        ),
      ),
    );
  }
}
