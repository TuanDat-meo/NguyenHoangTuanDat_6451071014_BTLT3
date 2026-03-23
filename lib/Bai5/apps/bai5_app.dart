import 'package:flutter/material.dart';
import '../views/bai5_view.dart';

class Bai5App extends StatelessWidget {
  const Bai5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài 5 - Pointer Events',
      home: Bai5View(),
    );
  }
}
