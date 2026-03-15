import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_item_tile.dart';

class CategoryExpansionList extends StatelessWidget {
  final List<CategoryModel> categories;
  final ExpansionPanelCallback onExpansion;

  const CategoryExpansionList({
    super.key,
    required this.categories,
    required this.onExpansion,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: onExpansion,
      children: categories.map((category) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                category.title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            );
          },
          body: Column(
            children: category.items
                .map((item) => CategoryItemTile(item: item))
                .toList(),
          ),
          isExpanded: category.isExpanded,
        );
      }).toList(),
    );
  }
}
