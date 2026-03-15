import 'package:flutter/material.dart';
import '../utils/dashboard_data.dart';
import '../widgets/dashboard_card.dart';

class DashboardGridView extends StatelessWidget {
  const DashboardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: DashboardData.items
                  .map((item) => DashboardCard(item: item))
                  .toList(),
            ),
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
