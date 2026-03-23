class ListItemModel {
  final String id;
  final String title;
  final String subtitle;
  final int colorIndex;

  const ListItemModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.colorIndex,
  });
}

List<ListItemModel> generateItems() {
  return List.generate(
    8,
    (i) => ListItemModel(
      id: 'item_$i',
      title: 'Item ${i + 1}',
      subtitle: 'Kéo sang trái để xóa mục này',
      colorIndex: i % 6,
    ),
  );
}
