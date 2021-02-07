import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kMaleIcon = FontAwesomeIcons.mars;
const kFemaleIcon = FontAwesomeIcons.venus;
const kActiveIconColor = Color(0xFFFFFFFF);
const kInActiveIconColor = Color(0xFF8D8E98);
const kScaffoldColor = Color(0xFF090C20);
const kActiveColor = Color(0xFF1D1F33);
const kResultColor = Color(0xFF4CE67A);
const kResultLabelStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kResultColor);
const kInActiveColor = Color(0xFF111528);
const kInActiveLabelStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: kInActiveIconColor);
const kLabelStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
const kBigLabelStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);
const kSliderThemeData = SliderThemeData(
    overlayColor: Color(0x29EB1655),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 35),
    thumbColor: Color(0xFFEB1655),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15));
