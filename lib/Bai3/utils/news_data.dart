import '../models/article_model.dart';

class NewsData {
  static const List<ArticleModel> articles = [
    ArticleModel(
      title: 'Nguyễn Hoàng Tuấn Đạt - 6451071014',
      description:
          'Lớp CNTT K64 - ĐH GTVT PH HCM',
      imageUrl:
          'assets/images/avatar.png',
    ),
    ArticleModel(
      title: 'Article Title 1: Flutter is awesome!',
      description:
          'Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.',
      imageUrl:
          'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=600',
    ),
    ArticleModel(
      title: 'Article Title 2: Local Coffee Shop Opens',
      description:
          'The cozy new cafe, "The Daily Grind", offers local brews and a relaxing atmosphere for customers.',
      imageUrl:
          'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=600',
    ),
    ArticleModel(
      title: 'Article Title 3: New Tech Gadgets',
      description:
          'Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.',
      imageUrl:
          'https://images.unsplash.com/photo-1518770660439-4636190af475?w=600',
    ),
    ArticleModel(
      title: 'Article Title 4: Space Exploration',
      description:
          'New missions to Mars are being planned by international space agencies to search for signs of ancient life.',
      imageUrl:
          'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=600',
    ),
  ];
}
