import 'package:bmi_calculator_final/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onTap;
  ReusableCard(
      {@required this.child, @required this.color, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? kActiveColor,
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  IconCard({@required this.icon, @required this.title, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconColor ?? kInActiveIconColor,
        ),
        Text(
          title ?? '',
          style: kLabelStyle,
        )
      ],
    );
  }
}
