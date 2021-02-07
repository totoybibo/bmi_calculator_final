import 'dart:math';
import 'enums.dart';
import 'package:flutter/cupertino.dart';

class BMI {
  final int height;
  final int weight;
  final int age;
  final Gender gender;
  double _bmi;
  BMI(
      {@required this.height,
      @required this.weight,
      @required this.age,
      @required this.gender}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You need to exercise more and change your diet.';
    } else if (_bmi > 18.5) {
      return 'Normal weight. Keep it up!';
    } else {
      return 'You need to eat more but with healthy foods.';
    }
  }
}
