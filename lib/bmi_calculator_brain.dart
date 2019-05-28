import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final height;
  final weight;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Your BMI Index is very High, you should try and reduce the weight.';
    } else if (_bmi >= 18.5) {
      return 'Your BMI Index is Normal, Keep it up and show off this to your friends.';
    } else {
      return 'Your BMI Index is very Low, you should try to increase your weight.';
    }
  }
}
