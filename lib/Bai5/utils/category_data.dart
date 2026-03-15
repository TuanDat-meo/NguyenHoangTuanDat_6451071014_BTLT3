import '../models/category_model.dart';

class CategoryData {
  static List<CategoryModel> defaultCategories() => [
        CategoryModel(
          title: 'Fruits',
          isExpanded: true,
          items: [
            const CategoryItem(emoji: '🍎', name: 'Apple'),
            const CategoryItem(emoji: '🍌', name: 'Banana'),
            const CategoryItem(emoji: '🍊', name: 'Orange'),
          ],
        ),
        CategoryModel(
          title: 'Vegetables',
          items: [
            const CategoryItem(emoji: '🥕', name: 'Carrot'),
            const CategoryItem(emoji: '🥦', name: 'Broccoli'),
            const CategoryItem(emoji: '🧅', name: 'Onion'),
          ],
        ),
        CategoryModel(
          title: 'Drinks',
          items: [
            const CategoryItem(emoji: '☕', name: 'Coffee'),
            const CategoryItem(emoji: '🧃', name: 'Juice'),
            const CategoryItem(emoji: '🧋', name: 'Bubble Tea'),
          ],
        ),
      ];
}
