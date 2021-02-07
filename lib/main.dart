// Packages:
import 'package:flutter/material.dart';

// Screens:
import 'package:bmi_calculator_flutter_updated/screens/input_page.dart';
import 'package:bmi_calculator_flutter_updated/screens/results_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),

          // floatingActionButton
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.purple,
          )),
      home: InputPage(title: 'BMI Calculator'),

      // initialRoute: '/input',
      // Routes
      routes: {
        // '/': (context) => InputPage(title: 'BMI Calculator'),
        '/results': (context) => ResultsPage(),
        // '/input': (context) => InputPage(title: 'BMI Calculator'),
      },
    );
  }
}
