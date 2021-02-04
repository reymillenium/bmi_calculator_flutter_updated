// Packages:
import 'package:flutter/material.dart';

// Constants:
const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

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
  void toggleGenderCards(String activeCardGender) {
    if (activeCardGender == 'male') {
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
