import 'package:flutter/material.dart';

class ShowDialogButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ShowDialogButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'ElevatedButton',
          style: TextStyle(fontSize: 13, color: Colors.black54),
        ),
        const SizedBox(height: 6),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(color: Colors.blue),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          ),
          child: const Text(
            'SHOW DIALOG',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
