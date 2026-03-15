import 'package:flutter/material.dart';
import '../views/category_menu_view.dart';

class ExpansionMenuPage extends StatelessWidget {
  const ExpansionMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Category Menu',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const CategoryMenuView(),
    );
  }
}
