import 'package:flutter/material.dart';
import '../models/list_item_model.dart';
import '../utils/item_colors.dart';
import '../widgets/item_tile_widget.dart';

class Bai10View extends StatefulWidget {
  const Bai10View({super.key});

  @override
  State<Bai10View> createState() => _Bai10ViewState();
}

class _Bai10ViewState extends State<Bai10View> {
  late List<ListItemModel> _items;

  @override
  void initState() {
    super.initState();
    _items = generateItems();
  }

  void _removeItem(String id) {
    setState(() {
      _items.removeWhere((item) => item.id == id);
    });
  }

  void _restoreAll() {
    setState(() {
      _items = generateItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Kéo Để Xóa'),
        backgroundColor: Colors.blueGrey.shade800,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.restore),
            onPressed: _restoreAll,
            tooltip: 'Khôi phục tất cả',
          ),
        ],
      ),
      body: _items.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inbox, size: 80, color: Colors.grey.shade400),
                  const SizedBox(height: 16),
                  Text(
                    'Danh sách trống!',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Nhấn nút khôi phục để thêm lại',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: _restoreAll,
                    icon: const Icon(Icons.restore),
                    label: const Text('Khôi phục'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey.shade800,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Thông tin sinh viên khi danh sách trống
                  const Text(
                    'NguyenHoangTuanDat-6451071014',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Colors.blueGrey.shade50,
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                          size: 16, color: Colors.blueGrey.shade400),
                      const SizedBox(width: 8),
                      Text(
                        'Còn ${_items.length} mục  •  Kéo sang trái để xóa',
                        style: TextStyle(
                            color: Colors.blueGrey.shade500, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      final item = _items[index];

                      return Dismissible(
                        key: Key(item.id),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) {
                          _removeItem(item.id);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${item.title} đã bị xóa'),
                              backgroundColor: Colors.blueGrey.shade700,
                              duration: const Duration(seconds: 2),
                              action: SnackBarAction(
                                label: 'HOÀN TÁC',
                                textColor: Colors.amberAccent,
                                onPressed: _restoreAll,
                              ),
                            ),
                          );
                        },
                        background: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 24),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete_sweep,
                                  color: Colors.white, size: 28),
                              SizedBox(height: 4),
                              Text('Xóa',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        child: ItemTileWidget(item: item),
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'NguyenHoangTuanDat-6451071014',
                      style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}