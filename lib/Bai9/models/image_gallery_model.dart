class ImageGalleryModel {
  final List<String> imageUrls;
  int _currentIndex;

  ImageGalleryModel({required this.imageUrls}) : _currentIndex = 0;

  int get currentIndex => _currentIndex;
  String get currentUrl => imageUrls[_currentIndex];
  int get total => imageUrls.length;

  bool get hasNext => _currentIndex < total - 1;
  bool get hasPrev => _currentIndex > 0;

  bool next() {
    if (hasNext) {
      _currentIndex++;
      return true;
    }
    return false;
  }

  bool prev() {
    if (hasPrev) {
      _currentIndex--;
      return true;
    }
    return false;
  }
}
