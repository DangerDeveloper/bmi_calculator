import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

import '../components/botton.dart';
import '../components/reuseable_card.dart';

class ResultsPage extends StatelessWidget {
  final getResult;
  final getBMI;
  final getInterpretation;

  ResultsPage(
      {@required this.getBMI,
      @required this.getInterpretation,
      @required this.getResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kSliderText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardColor,
              childData: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    getBMI,
                    style: kNumberResultText,
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      getInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Botton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
