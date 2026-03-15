import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

class DashboardCard extends StatelessWidget {
  final DashboardItem item;

  const DashboardCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              size: 64,
              color: item.iconColor,
            ),
            const SizedBox(height: 12),
            Text(
              item.label,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
