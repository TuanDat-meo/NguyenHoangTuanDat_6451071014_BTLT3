class TapCounterModel {
  int _count = 0;

  int get count => _count;

  void increment() => _count++;

  void reset() => _count = 0;
}
