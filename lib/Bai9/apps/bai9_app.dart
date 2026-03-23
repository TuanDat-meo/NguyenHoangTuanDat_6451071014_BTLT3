import 'package:flutter/material.dart';
import '../views/bai9_view.dart';

class Bai9App extends StatelessWidget {
  const Bai9App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 9 - Swipe Hình',
      home: Bai9View(),
    );
  }
}
