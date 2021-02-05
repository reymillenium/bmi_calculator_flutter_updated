// Packages:
import 'package:flutter/material.dart';

// Components:
import 'constants.dart';

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
  Color _maleCardColor;
  Color _femaleCardColor;
  bool _pressedMaleCard = false;
  bool _pressedFemaleCard = false;

  // Constructor
  BMICalculatorBrain() {
    this._maleCardColor = inactiveCardColor;
    this._femaleCardColor = inactiveCardColor;
  }

  // Getters:
  Color getMaleCardColor() {
    return _maleCardColor;
  }

  Color getFemaleCardColor() {
    return _femaleCardColor;
  }

  // Public methods:
  void toggleGenderCards(Gender gender) {
    if (gender.isMale) {
      _pressedMaleCard = !_pressedMaleCard;
      _pressedFemaleCard = false;
    } else {
      _pressedFemaleCard = !_pressedFemaleCard;
      _pressedMaleCard = false;
    }
    _updateColors();
  }

  // Private methods:
  void _updateColors() {
    _maleCardColor = _pressedMaleCard ? activeCardColor : inactiveCardColor;
    _femaleCardColor = _pressedFemaleCard ? activeCardColor : inactiveCardColor;
  }
}
