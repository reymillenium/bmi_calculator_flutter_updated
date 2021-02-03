import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCardChild extends StatelessWidget {
  final IconData icon;
  final String text;
  // const GenderCardChild({
  //   Key key,
  // }) : super(key: key);

  GenderCardChild({@required this.icon, @required this.text});

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
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
