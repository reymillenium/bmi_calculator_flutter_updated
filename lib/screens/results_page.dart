// Packages:
import 'package:bmi_calculator_flutter_updated/screens/input_page.dart';
import 'package:flutter/material.dart';

// Components:
import 'package:bmi_calculator_flutter_updated/components/reusable_card.dart';
import 'package:bmi_calculator_flutter_updated/components/bottom_button.dart';

// Brain:
import 'package:bmi_calculator_flutter_updated/bmi_calculator_brain.dart';

// Constants:
import 'package:bmi_calculator_flutter_updated/constants.dart';

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
                    // 'OVERWEIGHT',
                    bmiCalculatorBrain.getResult(),
                    style: kBMIClassificationTextStyle,
                  ),
                  Text(
                    // '26.7',
                    bmiCalculatorBrain.calculateBMI(),
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

          // Re-Calculate Button
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
