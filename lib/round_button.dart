import 'package:bmi_calculator_final/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  RoundButton({this.onTap, this.icon});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      highlightColor: kActiveColor,
      child: Icon(icon, size: 25),
      shape: CircleBorder(),
      fillColor: kInActiveColor,
      constraints: BoxConstraints.tightFor(width: 60, height: 60),
    );
  }
}
