import 'package:bmi_calculator_final/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  final Function onTap;
  final String title;
  CalculateButton({@required this.onTap, @required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1655),
        padding: EdgeInsets.only(bottom: 20),
        height: 80,
        width: double.infinity,
        child: Center(
          child: Text(title ?? 'CALCULATE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
