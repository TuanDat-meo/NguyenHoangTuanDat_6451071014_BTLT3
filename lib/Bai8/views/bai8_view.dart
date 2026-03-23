import 'package:flutter/material.dart';
import '../models/grid_cell_model.dart';
import '../widgets/grid_cell_widget.dart';

class Bai8View extends StatefulWidget {
  const Bai8View({super.key});

  @override
  State<Bai8View> createState() => _Bai8ViewState();
}

class _Bai8ViewState extends State<Bai8View> {
  late List<GridCellModel> _cells;

  @override
  void initState() {
    super.initState();
    _cells = List.generate(
      9,
      (i) => GridCellModel(index: i, selectedColor: kCellColors[i]),
    );
  }

  void _toggleCell(int index) {
    setState(() {
      _cells[index].toggle();
    });
  }

  void _resetAll() {
    setState(() {
      for (final cell in _cells) {
        cell.isSelected = false;
      }
    });
  }

  int get _selectedCount => _cells.where((c) => c.isSelected).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid - Tap Đổi Màu'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetAll,
            tooltip: 'Reset',
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: Colors.deepOrange.shade50,
            child: Center(
              child: Text(
                'Đã chọn: $_selectedCount / 9 ô',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: 9,
                itemBuilder: (context, index) => GridCellWidget(
                  cell: _cells[index],
                  onTap: () => _toggleCell(index),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Text(
              'NguyenHoangTuanDat-6451071014',
              style: TextStyle(
                fontSize: 14,
                color: Colors.deepOrange.shade700,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}