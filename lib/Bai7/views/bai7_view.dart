import 'package:flutter/material.dart';
import '../models/slider_model.dart';
import '../utils/slider_utils.dart';
import '../widgets/slider_thumb_widget.dart';

class Bai7View extends StatefulWidget {
  const Bai7View({super.key});

  @override
  State<Bai7View> createState() => _Bai7ViewState();
}

class _Bai7ViewState extends State<Bai7View> {
  final SliderModel _slider = SliderModel(initialValue: 0);
  bool _isDragging = false;
  static const double _trackHeight = 8.0;
  static const double _thumbRadius = 15.0;
  static const double _trackPadding = 24.0;

  void _handleDrag(double dx, double trackWidth) {
    setState(() {
      _slider.updateFromPosition(dx - _trackPadding, trackWidth - _trackPadding * 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Slider'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Value display
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: valueToColor(_slider.normalizedValue),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.4),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    _slider.label,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              // Label row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0', style: TextStyle(color: Colors.pink.shade300, fontWeight: FontWeight.bold)),
                  Text('Giá trị: ${_slider.label}',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.pink)),
                  Text('100', style: TextStyle(color: Colors.pink.shade800, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 12),
              // Custom slider track
              LayoutBuilder(
                builder: (context, constraints) {
                  final trackWidth = constraints.maxWidth;
                  final thumbLeft = _trackPadding +
                      _slider.normalizedValue * (trackWidth - _trackPadding * 2) -
                      _thumbRadius;

                  return GestureDetector(
                    onHorizontalDragStart: (_) => setState(() => _isDragging = true),
                    onHorizontalDragUpdate: (d) => _handleDrag(d.localPosition.dx, trackWidth),
                    onHorizontalDragEnd: (_) => setState(() => _isDragging = false),
                    onTapDown: (d) => _handleDrag(d.localPosition.dx, trackWidth),
                    child: SizedBox(
                      height: 44,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          // Track background
                          Positioned(
                            left: _trackPadding,
                            right: _trackPadding,
                            child: Container(
                              height: _trackHeight,
                              decoration: BoxDecoration(
                                color: Colors.pink.shade100,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          // Track fill
                          Positioned(
                            left: _trackPadding,
                            width: _slider.normalizedValue *
                                (trackWidth - _trackPadding * 2),
                            child: Container(
                              height: _trackHeight,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.pink.shade200, Colors.pink.shade700],
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          // Thumb
                          Positioned(
                            left: thumbLeft,
                            child: SliderThumbWidget(isDragging: _isDragging),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    'NguyenHoangTuanDat-6451071014',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
