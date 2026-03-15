import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          height: 280,
          color: Colors.grey[200],
          child: const Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (_, __, ___) => Container(
        height: 280,
        color: Colors.grey[300],
        child: const Center(
          child: Icon(Icons.image_not_supported, size: 80, color: Colors.grey),
        ),
      ),
    );
  }
}
