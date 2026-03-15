import 'package:flutter/material.dart';
import '../widgets/show_dialog_button.dart';
import '../widgets/option_dialog.dart';

class SimpleDialogView extends StatefulWidget {
  const SimpleDialogView({super.key});

  @override
  State<SimpleDialogView> createState() => _SimpleDialogViewState();
}

class _SimpleDialogViewState extends State<SimpleDialogView> {
  String? _selectedOption;

  Future<void> _showOptionDialog() async {
    final result = await showDialog<String>(
      context: context,
      builder: (_) => const OptionDialog(),
    );

    if (result != null && mounted) {
      setState(() => _selectedOption = result);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Selected: $result'),
          backgroundColor: Colors.deepPurple,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: ShowDialogButton(onPressed: _showOptionDialog),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Nguyễn Hoàng Tuấn Đạt - 6451071014',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ],
    );
  }
}
