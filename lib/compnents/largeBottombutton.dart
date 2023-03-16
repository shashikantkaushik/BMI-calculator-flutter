import 'package:flutter/material.dart';
import 'package:bmi_calculator/constraint.dart';
class largebutton extends StatelessWidget {
  largebutton({@required this.titletext,@required this.ontap});
  final String titletext;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap
      ,
      child: Center(
        child: Container(child:
        Text('CALCULATE',style: klargeButtonTextStyle,
            textAlign: TextAlign.center),
          padding: EdgeInsets.only(top: 15.0),
          margin: EdgeInsets.only(top: 10),
          color:kbottomContainerColor,
          height:kbottomContainerHeight,
          width:double.infinity,


        ),
      ),
    );
  }
}