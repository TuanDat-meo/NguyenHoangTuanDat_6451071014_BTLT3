import 'package:flutter/material.dart';
import '../views/simple_dialog_view.dart';

class SimpleDialogScreen extends StatelessWidget {
  const SimpleDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Simple Dialog Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const SimpleDialogView(),
    );
  }
}
