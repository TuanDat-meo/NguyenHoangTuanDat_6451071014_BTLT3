import 'package:flutter/material.dart';
import '../views/bai2_view.dart';

class Bai2App extends StatelessWidget {
  const Bai2App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 2 - Double Tap',
      home: Bai2View(),
    );
  }
}
