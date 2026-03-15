class CategoryItem {
  final String emoji;
  final String name;

  const CategoryItem({required this.emoji, required this.name});
}

class CategoryModel {
  final String title;
  final List<CategoryItem> items;
  bool isExpanded;

  CategoryModel({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });
}
