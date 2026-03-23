import 'package:flutter/material.dart';
import '../models/draggable_circle_model.dart';
import '../widgets/draggable_circle_widget.dart';

class Bai6View extends StatefulWidget {
  const Bai6View({super.key});

  @override
  State<Bai6View> createState() => _Bai6ViewState();
}

class _Bai6ViewState extends State<Bai6View> {
  late DraggableCircleModel _circleModel;
  bool _isDragging = false;

  @override
  void initState() {
    super.initState();
    _circleModel = DraggableCircleModel(
      position: const Offset(180, 350),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kéo Hình Tròn'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Background grid
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade50,
            ),
          ),
          const Center(
            child: Text(
              'Kéo hình tròn đến bất kỳ nơi nào',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),

          // Dòng text thông tin cá nhân cố định ở dưới
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                'NguyenHoangTuanDat-6451071014',
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          
          Positioned(
            left: _circleModel.position.dx - _circleModel.radius,
            top: _circleModel.position.dy - _circleModel.radius - kToolbarHeight - MediaQuery.of(context).padding.top,
            child: GestureDetector(
              onPanStart: (_) => setState(() => _isDragging = true),
              onPanUpdate: (details) {
                setState(() {
                  _circleModel.moveTo(details.delta);
                  _circleModel.clampTo(Size(size.width, size.height - kToolbarHeight - MediaQuery.of(context).padding.top));
                });
              },
              onPanEnd: (_) => setState(() => _isDragging = false),
              child: AnimatedScale(
                scale: _isDragging ? 1.2 : 1.0,
                duration: const Duration(milliseconds: 150),
                child: DraggableCircleWidget(
                  radius: _circleModel.radius,
                  color: _isDragging ? Colors.greenAccent.shade700 : Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}