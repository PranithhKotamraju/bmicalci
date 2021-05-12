import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/resuablecard.dart';
import 'package:flutter/material.dart';

import '../components/bottombutton.dart';
import 'package:bmi_calculator/calci_brain.dart';
class ResultsPage extends StatelessWidget {


  final String bmiResult;

  final String resultText;
  final String interpretation;

  ResultsPage( {@required this.bmiResult, @required this.resultText,  @required this.interpretation});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALUCLATOR',
            style: kLabelTextStyle,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kInactiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),style: kResultTextStyle),
                    Text(bmiResult,style: kNumberTextStyle),
                    Text(interpretation.toUpperCase(),style: kLabelTextStyle),
                    
                    
                    
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE - CALUCLATE YOUR  BMI',
            ),

          ],
        ));
  }
}
