import 'package:flutter/material.dart';
import '../utils/photo_data.dart';
import '../widgets/photo_item.dart';

class GalleryGridView extends StatelessWidget {
  const GalleryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: PhotoData.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return PhotoItem(photo: PhotoData.items[index]);
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Nguyễn Hoàng Tuấn Đạt - 6451071014',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ],
    );
  }
}
