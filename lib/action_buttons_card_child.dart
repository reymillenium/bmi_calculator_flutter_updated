// Packages:
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components:
import 'constants.dart';
import 'round_icon_button.dart';

class ActionButtonsCardChild extends StatelessWidget {
  final String magnitudeLabel;
  final String magnitudeText;
  final VoidCallback onMinusPress;
  final VoidCallback onAddPress;

  ActionButtonsCardChild({
    @required this.magnitudeLabel,
    @required this.magnitudeText,
    @required this.onMinusPress,
    @required this.onAddPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          magnitudeLabel,
          style: kLabelTextStyle,
        ),
        Text(
          magnitudeText,
          style: kHeightAmountTextStyle,
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: onMinusPress),
            SizedBox(
              width: 20.0,
            ),
            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: onAddPress),
          ],
        )
      ],
    );
  }
}
