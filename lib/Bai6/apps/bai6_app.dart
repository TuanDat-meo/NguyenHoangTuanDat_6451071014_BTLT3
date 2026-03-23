import 'package:flutter/material.dart';
import '../views/bai6_view.dart';

class Bai6App extends StatelessWidget {
  const Bai6App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 6 - Kéo Hình Tròn',
      home: Bai6View(),
    );
  }
}
