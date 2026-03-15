import '../models/food_model.dart';

class FoodData {
  static const List<FoodModel> items = [
    FoodModel(
      name: 'Phở Bò',
      description: 'Phở Bò Đặc Biệt',
      price: '65,000 VNĐ',
      imagePath: 'assets/images/phoBo.webp',
    ),
    FoodModel(
      name: 'Bún Chả',
      description: 'Bún Chả Hà Nội',
      price: '55,000 VNĐ',
      imagePath: 'assets/images/bunCha.webp',
    ),
    FoodModel(
      name: 'Cơm Tấm',
      description: 'Cơm Tấm Sườn Bì Chả',
      price: '50,000 VNĐ',
      imagePath: 'assets/images/comTam.webp',
    ),
    FoodModel(
      name: 'Bánh Mì',
      description: 'Bánh Mì Thịt Nướng',
      price: '35,000 VNĐ',
      imagePath: 'assets/images/banhMi.webp',
    ),
    FoodModel(
      name: 'Gỏi Cuốn',
      description: 'Gỏi Cuốn Tôm Thịt',
      price: '40,000 VNĐ',
      imagePath: 'assets/images/goiCuon.webp',
    ),
    FoodModel(
      name: 'Nguyễn Hoàng Tuấn Đạt',
      description: '6451071014',
      price: 'Vô giá',
      imagePath: 'assets/images/avatar.png',
    ),
  ];
}
