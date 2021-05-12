
import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      fillColor: Colors.pink,
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightForFinite(
        width: 50,
        height: 50,
      ),
    );
  }
}
