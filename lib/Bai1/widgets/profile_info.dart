import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ProfileInfo extends StatelessWidget {
  final UserModel user;

  const ProfileInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          user.fullName,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          user.email,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
