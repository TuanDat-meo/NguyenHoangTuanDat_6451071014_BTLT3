import 'package:flutter/material.dart';
import '../models/pointer_position_model.dart';
import '../utils/format_utils.dart';

class Bai5View extends StatefulWidget {
  const Bai5View({super.key});

  @override
  State<Bai5View> createState() => _Bai5ViewState();
}

class _Bai5ViewState extends State<Bai5View> {
  final PointerPositionModel _model = PointerPositionModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Info panel
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            color: _model.isActive
                ? Colors.orange.shade50
                : Colors.grey.shade100,
            padding: const EdgeInsets.all(20),
            child: _model.isActive
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _CoordBadge(label: 'X', value: formatCoord(_model.x)),
                      _CoordBadge(label: 'Y', value: formatCoord(_model.y)),
                    ],
                  )
                : const Center(
                    child: Text(
                      'Chạm vào vùng bên dưới để xem tọa độ',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
          ),
          // Touch area
          Expanded(
            child: Listener(
              onPointerDown: (e) => setState(() => _model.update(e)),
              onPointerMove: (e) => setState(() => _model.update(e)),
              onPointerUp: (e) => setState(() => _model.clear()),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange.shade100, Colors.amber.shade50],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.swipe, size: 64, color: Colors.orange),
                          SizedBox(height: 12),
                          Text(
                            'Vùng cảm ứng',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_model.isActive)
                    Positioned(
                      left: _model.x - 20,
                      top: _model.y - 100,
                      child: IgnorePointer(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange.withOpacity(0.4),
                            border: Border.all(color: Colors.orange, width: 2),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Text(
              'NguyenHoangTuanDat-6451071014',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.teal, // Sử dụng màu teal cho đồng bộ
              ),
            ),
        ],
      ),
    );
  }
}

class _CoordBadge extends StatelessWidget {
  final String label;
  final String value;
  const _CoordBadge({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label,
            style: const TextStyle(
                fontSize: 12, color: Colors.orange, fontWeight: FontWeight.bold)),
        Text(value,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
