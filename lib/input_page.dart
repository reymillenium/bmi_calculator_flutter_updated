// Packages:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Components:
import 'bmi_calculator_brain.dart';
import 'reusable_card.dart';
import 'gender_card_child.dart';
import 'constants.dart';

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
                        bmiCalculatorBrain.height.toString(),
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
                      trackHeight: 1,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                    ),
                    // data: SliderTheme.of(context).copyWith(
                    //   activeTrackColor: Colors.white,
                    //   inactiveTrackColor: kLabelTextColor,
                    //   trackHeight: 1,
                    //   thumbShape: RoundSliderThumbShape(
                    //     enabledThumbRadius: 16,
                    //   ),
                    //   thumbColor: kBottomContainerColor,
                    // ),
                    child: Slider(
                      // label: '${bmiCalculatorBrain.height}',
                      value: bmiCalculatorBrain.height.toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
                      // mouseCursor: MaterialStateMouseCursor.textable,
                      onChanged: (double newValue) {
                        setState(() {
                          bmiCalculatorBrain.height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          // Row # 3
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Container:
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),

      // floatingActionButton
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
