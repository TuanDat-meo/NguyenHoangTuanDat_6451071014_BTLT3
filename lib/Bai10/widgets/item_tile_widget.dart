import 'package:flutter/material.dart';
import '../models/list_item_model.dart';
import '../utils/item_colors.dart';

class ItemTileWidget extends StatelessWidget {
  final ListItemModel item;

  const ItemTileWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final color = getItemColor(item.colorIndex);
    final icon = getItemIcon(item.colorIndex);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.15),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        title: Text(
          item.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          item.subtitle,
          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
        ),
        trailing: Icon(Icons.swipe_left, color: Colors.grey.shade400),
      ),
    );
  }
}
