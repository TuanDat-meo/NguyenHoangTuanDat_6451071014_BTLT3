import 'package:flutter/material.dart';
import '../models/grid_cell_model.dart';

class GridCellWidget extends StatelessWidget {
  final GridCellModel cell;
  final VoidCallback onTap;

  const GridCellWidget({super.key, required this.cell, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: cell.isSelected ? cell.selectedColor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
          boxShadow: cell.isSelected
              ? [
                  BoxShadow(
                    color: cell.selectedColor.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: cell.isSelected
                ? const Icon(Icons.check_circle, color: Colors.white, size: 32, key: ValueKey('checked'))
                : Text(
                    '${cell.index + 1}',
                    key: const ValueKey('number'),
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
          ),
        ),
      ),
    );
  }
}
