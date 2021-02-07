// Packages:
import 'package:flutter/material.dart';

// Constants:
import 'package:bmi_calculator_flutter_updated/constants.dart';

class BottomButton extends StatelessWidget {
  // Properties:
  final String label;
  final VoidCallback onTap;

  // Constructor:
  BottomButton({
    this.label = '',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
