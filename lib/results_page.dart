import 'package:bmi_calculator_final/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'enums.dart';
import 'round_button.dart';
import 'bmi_calculator.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;
  ResultsPage({this.bmi, this.result, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              flex: 1),
          Expanded(
              child: Container(
                //padding: EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: kActiveColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(result, style: kResultLabelStyle),
                    Text(bmi,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80,
                            color: Colors.white)),
                    Text(interpretation, style: kLabelStyle)
                  ],
                ),
              ),
              flex: 5),
          CalculateButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
