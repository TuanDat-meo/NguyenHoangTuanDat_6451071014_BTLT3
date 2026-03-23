import 'package:flutter/material.dart';
import '../views/bai10_view.dart';

class Bai10App extends StatelessWidget {
  const Bai10App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 10 - Kéo Xóa',
      home: Bai10View(),
    );
  }
}
