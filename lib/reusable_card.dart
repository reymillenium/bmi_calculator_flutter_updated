import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Properties:
  final Color color;

  // Constructor
  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
