import 'package:flutter/material.dart';
import '../models/article_model.dart';

class NewsCard extends StatelessWidget {
  final ArticleModel article;

  const NewsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          article.imageUrl.startsWith('http')
            ? Image.network(
                article.imageUrl,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => Container(
                  height: 100,
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                ),
              )
            : Image.asset(
                article.imageUrl,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  article.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
