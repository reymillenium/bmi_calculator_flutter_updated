// Packages:
import 'package:flutter/material.dart';
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // Row # 1
          Expanded(
            child: Row(
              children: [
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

          // Row # 2
          Expanded(
            child: Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT'),
                  ],
                ),
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
