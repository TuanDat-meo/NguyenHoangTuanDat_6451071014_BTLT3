class SliderModel {
  double _value; // 0.0 to 1.0 normalized
  final double min;
  final double max;

  SliderModel({this.min = 0, this.max = 100, double initialValue = 0})
      : _value = initialValue / (max - min);

  double get normalizedValue => _value;
  double get displayValue => _value * (max - min) + min;

  void updateFromPosition(double dx, double trackWidth) {
    _value = (dx / trackWidth).clamp(0.0, 1.0);
  }

  String get label => displayValue.toStringAsFixed(0);
}
