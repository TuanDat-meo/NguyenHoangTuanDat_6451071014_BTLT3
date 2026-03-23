import 'package:flutter/material.dart';
import '../views/bai7_view.dart';

class Bai7App extends StatelessWidget {
  const Bai7App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 7 - Custom Slider',
      home: Bai7View(),
    );
  }
}
