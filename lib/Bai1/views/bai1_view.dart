import 'package:flutter/material.dart';

class Bai1View extends StatelessWidget {
  const Bai1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You tapped the box!'),
                duration: Duration(seconds: 2),
                backgroundColor: Colors.indigo,
              ),
            );
          },
          child: Container(
            width: 220, // Tăng nhẹ chiều rộng để chứa vừa dòng text dài
            height: 220, // Tăng nhẹ chiều cao
            decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.indigo, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.touch_app, size: 48, color: Colors.indigo),
                SizedBox(height: 12),
                Text(
                  'Tap me!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(height: 8),
                // Thêm dòng thông tin sinh viên ở đây
                Text(
                  'NguyenHoangTuanDat-6451071014',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.indigo,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}