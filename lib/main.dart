import 'package:flutter/material.dart';
import 'dart:ui';

import 'Bai1/apps/profile_screen.dart';
import 'Bai2/apps/food_list_screen.dart';
import 'Bai3/apps/news_screen.dart';
import 'Bai4/apps/cua_hang_the_thao.dart';
import 'Bai5/apps/expansion_menu_page.dart';
import 'Bai6/apps/course_detail_page.dart';
import 'Bai7/apps/gallery_screen.dart';
import 'Bai8/apps/simple_dialog_screen.dart';
import 'Bai9/apps/dashboard_screen.dart';
import 'Bai10/apps/product_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài Tập Chương 4',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: const HomeMenu(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài Tập Chương 4'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildItem(context, 'Bài 1: Trang Hồ Sơ Cá Nhân', const ProfileScreen()),
          _buildItem(context, 'Bài 2: Danh Sách Món Ăn', const FoodListScreen()),
          _buildItem(context, 'Bài 3: News Feed', const NewsScreen()),
          _buildItem(context, 'Bài 4: Grid Product', const CuaHangTheThao()),
          _buildItem(context, 'Bài 5: Category Menu', const ExpansionMenuPage()),
          _buildItem(context, 'Bài 6: Course Detail', const CourseDetailPage()),
          _buildItem(context, 'Bài 7: Gallery Ảnh', const GalleryScreen()),
          _buildItem(context, 'Bài 8: Simple Dialog', const SimpleDialogScreen()),
          _buildItem(context, 'Bài 9: Dashboard', const DashboardScreen()),
          _buildItem(context, 'Bài 10: Product Detail Page ', const ProductDetailScreen()),          
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, Widget screen) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => screen),
        ),
      ),
    );
  }
}
