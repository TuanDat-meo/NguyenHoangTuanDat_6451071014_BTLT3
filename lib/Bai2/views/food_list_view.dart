import 'package:flutter/material.dart';
import '../utils/food_data.dart';
import '../widgets/food_card.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: FoodData.items.length,
      itemBuilder: (context, index) {
        return FoodCard(food: FoodData.items[index]);
      },
    );
  }
}
