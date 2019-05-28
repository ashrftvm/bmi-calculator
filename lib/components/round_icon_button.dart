import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      onPressed: onPressed,
      fillColor: Color(0xff4c4f5e),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
