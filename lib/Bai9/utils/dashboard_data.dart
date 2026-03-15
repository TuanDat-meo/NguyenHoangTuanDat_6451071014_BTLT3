import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

class DashboardData {
  static const List<DashboardItem> items = [
    DashboardItem(
      label: 'Profile',
      icon: Icons.account_circle,
      iconColor: Color(0xFF1565C0),
    ),
    DashboardItem(
      label: 'Messages',
      icon: Icons.chat,
      iconColor: Color(0xFF2E7D32),
    ),
    DashboardItem(
      label: 'Settings',
      icon: Icons.settings,
      iconColor: Color(0xFFE65100),
    ),
    DashboardItem(
      label: 'Notifications',
      icon: Icons.notifications_active,
      iconColor: Color(0xFF6A1B9A),
    ),
  ];
}
