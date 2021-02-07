// Packages:
import 'package:flutter/material.dart';
import 'dart:math';

// Constants:
import 'package:bmi_calculator_flutter_updated/constants.dart';

// Enums:
enum Gender { male, female }

extension GenderExtension on Gender {
  bool get isMale {
    switch (this) {
      case Gender.male:
        return true;
      default:
        return false;
    }
  }

  bool get isFemale {
    return !this.isMale;
  }
}

class BMICalculatorBrain {
  // Private Properties
  Gender _selectedGender;
  Color _maleCardColor;
  Color _femaleCardColor;

  int _height = 170;
  int _weight = 102;
  int _age = 19;
  double _bmi;

  // Constructor
  BMICalculatorBrain() {
    this._maleCardColor = kInactiveCardColor;
    this._femaleCardColor = kInactiveCardColor;
    this._selectedGender = Gender.male;
    _updateColors();
  }

  // Getters:
  Color getMaleCardColor() {
    return _maleCardColor;
  }

  Color getFemaleCardColor() {
    return _femaleCardColor;
  }

  int getHeight() {
    return _height;
  }

  String getWeightText() {
    return _weight.toString();
  }

  String getAgeText() {
    return _age.toString();
  }

  // Setters:
  void setHeight(int newValue) {
    _height = newValue;
  }

  void reduceWeight() {
    _weight--;
  }

  void increaseWeight() {
    _weight++;
  }

  // Setters
  void reduceAge() {
    _age--;
  }

  void increaseAge() {
    _age++;
  }

  // Public methods:
  void toggleGenderCards(Gender gender) {
    _selectedGender = gender;
    _updateColors();
  }

  String calculateBMI() {
    // Classical BMI formula (Kg & cms)
    // _bmi = _weight / pow(_height / 100, 2);
    // New BMI formula (Kg & cms)
    _bmi = 1.3 * _weight / pow(_height / 100, 2.5);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  // Private methods:
  void _updateColors() {
    _maleCardColor = _selectedGender.isMale ? kActiveCardColor : kInactiveCardColor;
    _femaleCardColor = _selectedGender.isFemale ? kActiveCardColor : kInactiveCardColor;
  }
}
