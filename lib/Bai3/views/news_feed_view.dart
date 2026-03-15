import 'package:flutter/material.dart';
import '../utils/news_data.dart';
import '../widgets/news_card.dart';

class NewsFeedView extends StatelessWidget {
  const NewsFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: NewsData.articles.length,
      itemBuilder: (context, index) {
        return NewsCard(article: NewsData.articles[index]);
      },
    );
  }
}
