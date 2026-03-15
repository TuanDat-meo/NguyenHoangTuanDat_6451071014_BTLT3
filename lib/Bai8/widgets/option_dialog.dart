import 'package:flutter/material.dart';
import '../models/dialog_option_model.dart';
import '../utils/dialog_data.dart';

class OptionDialog extends StatelessWidget {
  const OptionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text(
        'Choose an option',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      children: DialogData.options.map((option) {
        return SimpleDialogOption(
          onPressed: () => Navigator.pop(context, option.label),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            decoration: BoxDecoration(
              color: option.label == DialogData.options.last.label
                  ? Colors.blue.shade100
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              option.label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        );
      }).toList(),
    );
  }
}
