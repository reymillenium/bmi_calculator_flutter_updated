import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class GenderCardChild extends StatelessWidget {
  // Properties:
  final IconData icon;
  final String label;

  // Constructor:
  GenderCardChild({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
