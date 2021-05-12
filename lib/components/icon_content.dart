import 'package:flutter/material.dart';
import 'constants.dart';

class GenderWidget extends StatelessWidget {
  final String genderName;
  final IconData genderIcon;

  GenderWidget({@required this.genderName, @required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          genderName,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
