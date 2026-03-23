import 'package:flutter/material.dart';
import '../views/bai1_view.dart';

class Bai1App extends StatelessWidget {
  const Bai1App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 1 - Tap Cơ Bản',
      home: Bai1View(),
    );
  }
}
