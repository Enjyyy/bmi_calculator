import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String Calculation() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  CalcResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String CalcFeedback() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal';
    } else if (_bmi > 18.5) {
      return 'Great!';
    } else {
      return 'You should eat more';
    }
  }
}
