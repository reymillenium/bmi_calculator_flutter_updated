// Packages:
import 'package:flutter/material.dart';

// Components:
import 'bmi_calculator_brain.dart';
import 'reusable_card.dart';
import 'gender_card_child.dart';
import 'constants.dart';
import 'round_icon_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReusableCard(color: kActiveCardColor),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/input');
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kCalculateTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
