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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Results Title
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kBigTitleTextStyle,
                ),
              ),
            ),
          ),

          // Reusable Card: MBI Data
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: kBMIClassificationTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: kHugeNumbersTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'You have a higher than normal body weight. Try to exeercise more.',
                      style: kBMIInterpretationTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Re-Calculate
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, '/input');
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
