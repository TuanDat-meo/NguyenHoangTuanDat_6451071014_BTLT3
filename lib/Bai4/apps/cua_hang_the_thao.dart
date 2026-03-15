import 'package:flutter/material.dart';
import '../views/grid_product_view.dart';

class CuaHangTheThao extends StatelessWidget {
  const CuaHangTheThao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Cửa Hàng Thể Thao',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: const GridProductView(),
    );
  }
}
