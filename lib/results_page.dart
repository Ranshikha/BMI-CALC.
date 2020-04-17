import 'package:flutter/material.dart';
import 'package:bmi/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/reusable.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String interpretation;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI CALCULATOR'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: kTitleTextStyle,),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour:  kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultText.toUpperCase(),style: kResultTextStyle,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interpretation,style: kBMIResultText,
                  textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(onTap:(){ Navigator.pop(context);}, buttonTitle: 'RE-CALCULTE'),
        ],
      ),
    );
  }
}




