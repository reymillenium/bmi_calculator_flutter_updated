// Packages:
import 'package:flutter/material.dart';

// Constants:
import 'package:bmi_calculator_flutter_updated/constants.dart';

class RoundIconButton extends StatelessWidget {
  // Properties:
  final IconData icon;
  final VoidCallback onPressed;

  // Constructor:
  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: kLightButtonColor,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
