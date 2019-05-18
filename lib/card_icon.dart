import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  CardIcon({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 24.0),
        ),
      ],
    );
  }
}
