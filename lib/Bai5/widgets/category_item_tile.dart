import 'package:flutter/material.dart';
import '../models/category_model.dart';

class CategoryItemTile extends StatelessWidget {
  final CategoryItem item;

  const CategoryItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        item.emoji,
        style: const TextStyle(fontSize: 24),
      ),
      title: Text(item.name),
    );
  }
}
