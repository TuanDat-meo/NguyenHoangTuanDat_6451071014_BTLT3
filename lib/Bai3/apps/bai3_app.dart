import 'package:flutter/material.dart';
import '../views/bai3_view.dart';

class Bai3App extends StatelessWidget {
  const Bai3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 3 - Long Press',
      home: Bai3View(),
    );
  }
}
