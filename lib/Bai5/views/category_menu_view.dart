import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/category_data.dart';
import '../widgets/category_expansion_list.dart';

class CategoryMenuView extends StatefulWidget {
  const CategoryMenuView({super.key});

  @override
  State<CategoryMenuView> createState() => _CategoryMenuViewState();
}

class _CategoryMenuViewState extends State<CategoryMenuView> {
  final List<CategoryModel> _categories = CategoryData.defaultCategories();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nguyễn Hoàng Tuấn Đạt  6451071014',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Expansion Menu',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Using ExpansionPanelList',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          CategoryExpansionList(
            categories: _categories,
            onExpansion: (int index, bool isExpanded) {
              setState(() {
                _categories[index].isExpanded = !_categories[index].isExpanded;
              });
            },
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'StatefulWidget Management',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
