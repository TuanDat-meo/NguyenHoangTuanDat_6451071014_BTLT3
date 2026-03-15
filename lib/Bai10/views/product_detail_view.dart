import 'package:flutter/material.dart';
import '../models/product_detail_model.dart';
import '../utils/product_detail_data.dart';
import '../widgets/product_image.dart';
import '../widgets/add_to_cart_button.dart';
class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});
  static const ProductDetailModel _product = ProductDetailData.product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          ProductImage(imageUrl: _product.imageUrl),

          // Content padding
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product name
                Text(
                  _product.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),

                // Price
                Text(
                  _product.price,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),

                // Description title
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),

                // Description text
                Text(
                  _product.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),

                // Add to Cart button
                AddToCartButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Đã thêm vào giỏ hàng!'),
                        backgroundColor: Colors.blue,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),

                // Signature
                const Center(
                  child: Text(
                    'Nguyễn Hoàng Tuấn Đạt - 6451071014',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
