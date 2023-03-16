import 'package:bmi_calculator/constraint.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/compnents/reusableCode.dart';
import 'package:bmi_calculator/compnents/largeBottombutton.dart';
class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiresult,@required this.resultText,@required this.interpretation});
final String bmiresult;
final String resultText;
final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor:Color( 0xFF0A0E21),
        ),
        body:
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
Expanded(child:
Container(padding:EdgeInsets.all(15.0),
   alignment: Alignment.bottomLeft,
   child: Text('Your Result',style: ktitleTextStyle)

)),
        Expanded(flex: 5,
            child:reusableCode(colour:kactiveCardColor,
            childcard:
        Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Text(resultText.toUpperCase(),style: kresultTextStyle),

           Text(bmiresult,style: knumberTextStyle),
         Text(interpretation,style: kbodyTextStyle,textAlign: TextAlign.center,)
        ]))),
        Expanded(child: largebutton(titletext:'RECALCULATE',ontap:(){

          Navigator.pop(context);})),

      ],)


    );
  }
}
