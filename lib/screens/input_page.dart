// Packages:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components:
import 'package:bmi_calculator_flutter_updated/components/reusable_card.dart';
import 'package:bmi_calculator_flutter_updated/components/gender_card_child.dart';
import 'package:bmi_calculator_flutter_updated/components/bottom_button.dart';
import 'package:bmi_calculator_flutter_updated/components/action_buttons_card_child.dart';

// Brain:
import 'package:bmi_calculator_flutter_updated/bmi_calculator_brain.dart';

// Constants
import 'package:bmi_calculator_flutter_updated/constants.dart';

BMICalculatorBrain bmiCalculatorBrain = BMICalculatorBrain();

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Row # 1: Gender Cards
          Expanded(
            child: Row(
              children: [
                // Male Card:
                Expanded(
                  child: ReusableCard(
                    color: bmiCalculatorBrain.getMaleCardColor(),
                    cardChild: GenderCardChild(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onTapEvent: () {
                      setState(() {
                        bmiCalculatorBrain.toggleGenderCards(Gender.male);
                      });
                    },
                  ),
                ),

                // Female Card:
                Expanded(
                  child: ReusableCard(
                    color: bmiCalculatorBrain.getFemaleCardColor(),
                    cardChild: GenderCardChild(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onTapEvent: () {
                      setState(() {
                        bmiCalculatorBrain.toggleGenderCards(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          // Row # 2: Scroll bar
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        bmiCalculatorBrain.getHeight().toString(),
                        style: kHeightAmountTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kLabelTextColor,
                      thumbColor: kBottomContainerColor,
                      overlayColor: kTranslucentBottomContainerColor,
                      trackHeight: 2,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                    ),
                    child: Slider(
                      // label: '${bmiCalculatorBrain.getHeight()}',
                      value: bmiCalculatorBrain.getHeight().toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
                      onChanged: (double newValue) {
                        setState(() {
                          bmiCalculatorBrain.setHeight(newValue.round());
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          // Row # 3: Weight and age Cards
          Expanded(
            child: Row(
              children: [
                // Weight Card
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: ActionButtonsCardChild(
                      magnitudeLabel: 'WEIGHT',
                      magnitudeText: bmiCalculatorBrain.getWeightText(),
                      onMinusPress: () {
                        setState(() {
                          bmiCalculatorBrain.reduceWeight();
                        });
                      },
                      onAddPress: () {
                        setState(() {
                          bmiCalculatorBrain.increaseWeight();
                        });
                      },
                    ),
                  ),
                ),

                // Age Card
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: ActionButtonsCardChild(
                      magnitudeLabel: 'AGE',
                      magnitudeText: bmiCalculatorBrain.getAgeText(),
                      onMinusPress: () {
                        setState(() {
                          bmiCalculatorBrain.reduceAge();
                        });
                      },
                      onAddPress: () {
                        setState(() {
                          bmiCalculatorBrain.increaseAge();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Calculate Button
          BottomButton(
            label: 'CALCULATE',
            onTap: () {
              setState(() {
                bmiCalculatorBrain.calculateBMI();
              });
              Navigator.pushNamed(context, '/results');
            },
          ),
        ],
      ),
    );
  }
}
