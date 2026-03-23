import 'package:flutter/material.dart';
import '../models/image_gallery_model.dart';
import '../utils/image_data.dart';
import '../widgets/page_indicator_widget.dart';

class Bai9View extends StatefulWidget {
  const Bai9View({super.key});

  @override
  State<Bai9View> createState() => _Bai9ViewState();
}

class _Bai9ViewState extends State<Bai9View> {
  late ImageGalleryModel _gallery;
  late PageController _pageController;
  double _dragStartX = 0;

  @override
  void initState() {
    super.initState();
    _gallery = ImageGalleryModel(
      imageUrls: kImageData.map((e) => e['url']!).toList(),
    );
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goTo(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          kImageData[_gallery.currentIndex]['title']!,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // PageView with gesture detection
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() {
                while (_gallery.currentIndex < index) _gallery.next();
                while (_gallery.currentIndex > index) _gallery.prev();
              }),
              itemCount: _gallery.total,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onHorizontalDragStart: (d) => _dragStartX = d.globalPosition.dx,
                  onHorizontalDragEnd: (d) {
                    final delta = d.globalPosition.dx - _dragStartX;
                    if (delta < -50 && _gallery.hasNext) {
                      _goTo(_gallery.currentIndex + 1);
                    } else if (delta > 50 && _gallery.hasPrev) {
                      _goTo(_gallery.currentIndex - 1);
                    }
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        kImageData[index]['url']!,
                        fit: BoxFit.cover,
                        loadingBuilder: (_, child, progress) {
                          if (progress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: progress.expectedTotalBytes != null
                                  ? progress.cumulativeBytesLoaded /
                                      progress.expectedTotalBytes!
                                  : null,
                              color: Colors.white,
                            ),
                          );
                        },
                        errorBuilder: (_, __, ___) => Container(
                          color: Colors.grey.shade800,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.image_not_supported,
                                  color: Colors.white54, size: 64),
                              const SizedBox(height: 8),
                              Text(
                                kImageData[index]['title']!,
                                style: const TextStyle(color: Colors.white54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Swipe hint overlay
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.6)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Controls row
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _gallery.hasPrev
                          ? () => setState(() {
                                if (_gallery.prev()) _goTo(_gallery.currentIndex);
                              })
                          : null,
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    PageIndicatorWidget(
                      total: _gallery.total,
                      current: _gallery.currentIndex,
                      activeColor: Colors.white,
                    ),
                    IconButton(
                      onPressed: _gallery.hasNext
                          ? () => setState(() {
                                if (_gallery.next()) _goTo(_gallery.currentIndex);
                              })
                          : null,
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'NguyenHoangTuanDat-6451071014',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white38, // Màu trắng mờ để tinh tế hơn
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}