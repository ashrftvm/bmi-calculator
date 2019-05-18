import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'card_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF1d1e33);
const activeCardColor = Color(0xFF251F37);
const inactiveCardColor = Color(0xFF1B162D);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      containerColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      containerColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              containerColor: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    containerColor: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: cardColor,
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
