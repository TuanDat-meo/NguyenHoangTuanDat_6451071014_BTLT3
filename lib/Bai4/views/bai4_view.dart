import 'package:flutter/material.dart';
import '../models/tap_counter_model.dart';
import '../widgets/counter_display.dart';

class Bai4View extends StatefulWidget {
  const Bai4View({super.key});

  @override
  State<Bai4View> createState() => _Bai4ViewState();
}

class _Bai4ViewState extends State<Bai4View> {
  final TapCounterModel _model = TapCounterModel();

  void _onTap() {
    setState(() {
      _model.increment();
    });
  }

  void _onReset() {
    setState(() {
      _model.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đếm Số Lần Tap'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _onReset,
            tooltip: 'Reset',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.deepPurple.shade200),
              ),
              child: CounterDisplay(count: _model.count),
            ),
            const SizedBox(height: 48),
            ElevatedButton.icon(
              onPressed: _onTap,
              icon: const Icon(Icons.ads_click),
              label: const Text(
                'Tap Here',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 6,
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
      ),
    );
  }
}
