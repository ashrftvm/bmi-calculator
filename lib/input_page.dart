import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'card_icon.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender;
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: CardIcon(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      color: selectedGender != Gender.male
                          ? kInactiveCardIcon
                          : kActiveCardIcon,
                    ),
                    containerColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: CardIcon(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      color: selectedGender != Gender.female
                          ? kInactiveCardIcon
                          : kActiveCardIcon,
                    ),
                    containerColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              containerColor: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Slider(
                    value: height.toDouble(),
                    activeColor: Color(0xFFff0000),
                    inactiveColor: Color(0xFF999999),
                    min: 100.0,
                    max: 250.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    containerColor: kCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: kCardColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
