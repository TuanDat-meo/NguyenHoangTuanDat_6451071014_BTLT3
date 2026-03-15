import 'package:flutter/material.dart';
import '../views/food_list_view.dart';

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DANH SÁCH MÓN ĂN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const FoodListView(),
    );
  }
}
