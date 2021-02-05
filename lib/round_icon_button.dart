// Packages:
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components:
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  // Properties:
  final IconData icon;
  final VoidCallback onPressed;

  // Constructor:
  RoundIconButton({
    this.icon,
    this.onPressed,
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
