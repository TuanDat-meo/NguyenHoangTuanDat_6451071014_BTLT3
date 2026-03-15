import 'package:flutter/material.dart';
import '../views/news_feed_view.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const NewsFeedView(),
    );
  }
}
