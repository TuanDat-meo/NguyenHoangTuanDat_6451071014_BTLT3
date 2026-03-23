import 'package:flutter/material.dart';
import '../views/bai8_view.dart';

class Bai8App extends StatelessWidget {
  const Bai8App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 8 - Grid Tap',
      home: Bai8View(),
    );
  }
}
