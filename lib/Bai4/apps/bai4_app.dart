import 'package:flutter/material.dart';
import '../views/bai4_view.dart';

class Bai4App extends StatelessWidget {
  const Bai4App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 4 - Đếm Tap',
      home: Bai4View(),
    );
  }
}
