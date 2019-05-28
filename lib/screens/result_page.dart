import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.bmiResultTitle,
      @required this.bmiResultInterpretation});
  final bmiResultTitle;
  final bmiResult;
  final bmiResultInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              containerColor: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResultTitle.toUpperCase(),
                    style: kBMIResultNameStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMINumberStyle,
                  ),
                  Text(
                    bmiResultInterpretation,
                    textAlign: TextAlign.center,
                    style: kLabelTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonLabel: 'RE-CALCULATE'),
          ),
        ],
      ),
    );
  }
}
