import 'package:flutter/material.dart';
import '../utils/profile_constants.dart';
import '../views/profile_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProfileColors.primary,
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.account_circle, color: Colors.white),
          ),
        ],
      ),
      body: const ProfileView(),
    );
  }
}
