import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonLabel});

  final Function onTap;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Center(
            child: Text(
              buttonLabel,
              textAlign: TextAlign.center,
              style: kLabelTextStyle,
            ),
          ),
          color: Colors.red,
          height: 65.0,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ),
    );
  }
}
