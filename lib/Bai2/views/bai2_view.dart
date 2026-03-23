import 'package:flutter/material.dart';
import '../models/color_model.dart';

class Bai2View extends StatefulWidget {
  const Bai2View({super.key});

  @override
  State<Bai2View> createState() => _Bai2ViewState();
}

class _Bai2ViewState extends State<Bai2View> with SingleTickerProviderStateMixin {
  late ColorModel _colorModel;
  late AnimationController _animController;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _colorModel = ColorModel(
      current: Colors.blue,
      colors: [Colors.blue, Colors.red],
    );
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scaleAnim = Tween<double>(begin: 1.0, end: 0.85).animate(
      CurvedAnimation(parent: _animController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _onDoubleTap() async {
    await _animController.forward();
    setState(() {
      _colorModel.toggle();
    });
    await _animController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap - Đổi Màu'),
        backgroundColor: _colorModel.current,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Double tap để đổi màu',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onDoubleTap: _onDoubleTap,
              child: ScaleTransition(
                scale: _scaleAnim,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: _colorModel.current,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: _colorModel.current.withOpacity(0.5),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Icon(
                    _colorModel.current == Colors.blue
                        ? Icons.water_drop
                        : Icons.local_fire_department,
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _colorModel.current,
              ),
              child: Text(
                _colorModel.current == Colors.blue ? 'BLUE 🔵' : 'RED 🔴',
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'NguyenHoangTuanDat-6451071014',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}