import 'package:bmi_calculator_final/constants.dart';
import 'package:bmi_calculator_final/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'enums.dart';
import 'round_button.dart';
import 'bmi_calculator.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Female;
  int age = 20;
  int height = 150;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  color: selectedGender == Gender.Male
                      ? kActiveColor
                      : kInActiveColor,
                  child: IconCard(
                      icon: kMaleIcon,
                      title: 'MALE',
                      iconColor: selectedGender == Gender.Male
                          ? kActiveIconColor
                          : kInActiveIconColor),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  color: selectedGender == Gender.Female
                      ? kActiveColor
                      : kInActiveColor,
                  child: IconCard(
                      icon: kFemaleIcon,
                      title: 'FEMALE',
                      iconColor: selectedGender == Gender.Female
                          ? kActiveIconColor
                          : kInActiveIconColor),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: kActiveColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT', style: kLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kBigLabelStyle),
                    Text('cm', style: kLabelStyle),
                  ],
                ),
                SliderTheme(
                  data: kSliderThemeData,
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 300,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      }),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: kInActiveLabelStyle),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(weight.toString(), style: kBigLabelStyle),
                          Text('kg', style: kInActiveLabelStyle)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundButton(
                            icon: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          RoundButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: kInActiveLabelStyle),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(age.toString(), style: kBigLabelStyle),
                          Text('yrs', style: kInActiveLabelStyle)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundButton(
                            icon: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          RoundButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        CalculateButton(
          title: 'CALCULATE',
          onTap: () {
            setState(() {
              BMI bmi = BMI(
                  height: height,
                  weight: weight,
                  age: age,
                  gender: selectedGender);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmi: bmi.getBMI(),
                            result: bmi.getResult(),
                            interpretation: bmi.getInterpretation(),
                          )));
            });
          },
        )
      ],
    );
  }
}
