import 'package:flutter/material.dart';
import '../utils/product_data.dart';
import '../widgets/product_card.dart';

class GridProductView extends StatelessWidget {
  const GridProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 0.78,
      children: ProductData.items
          .map((product) => ProductCard(product: product))
          .toList(),
    );
  }
}
