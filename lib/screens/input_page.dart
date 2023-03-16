import 'package:bmi_calculator/screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/compnents/reusableCode.dart';
import 'package:bmi_calculator/compnents/IconContent.dart';
import 'package:bmi_calculator/constraint.dart';
import 'package:bmi_calculator/compnents/largeBottombutton.dart';
import 'package:bmi_calculator/compnents/roundIconButton.dart';


import 'package:bmi_calculator/calculator_brain.dart';
enum Gender{male,female}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Color maleCardColor=kinactiveCardColor;
  Color femaleCardColor=kinactiveCardColor;
  Gender selectedGender;
  int height=180;
  int weight=60;
  int age=18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor:Color( 0xFF0A0E21),
      ),
      body:Column(children:<Widget>[
      Expanded(child:
      Row(children:<Widget>[
        Expanded(child:
          reusableCode(  onPress:(){setState(() {
    selectedGender=Gender.male;
    });
    },
            colour:selectedGender==Gender.male?kactiveCardColor:kinactiveCardColor,childcard:IconContent(icon:FontAwesomeIcons.mars,label:'MALE'),),

      ),
        Expanded(


    child:
            reusableCode(onPress:(){
    setState(() {
    selectedGender=Gender.female;
    });
    },colour:selectedGender==Gender.female?kactiveCardColor:kinactiveCardColor,childcard:IconContent(icon:FontAwesomeIcons.venus,label:'FEMALE')),

        )
      ]
      ),
      ),
   Expanded(child:reusableCode(colour:kactiveCardColor,childcard:Column(
     mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget>[
    Text('HEIGHT',style: klabelTextStyle,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children:<Widget>[
      Text(height.toString(),style: knumberTextStyle),
      Text('cm',style:klabelTextStyle)
    ]
    ),
SliderTheme(data: SliderTheme.of(context).copyWith(
  thumbColor:kbottomContainerColor,
  thumbShape:RoundSliderThumbShape(enabledThumbRadius: 15.0),
  activeTrackColor:Colors.white,
  overlayShape:RoundSliderOverlayShape(
    overlayRadius: 30.0),
    overlayColor:Color(0x15EB1555),
  ),


child:
      Slider(
        value:height.toDouble(),
        max: 220.0,
        min:120.0,
        inactiveColor:Color(0xFFB1555),

        onChanged:(double newvalue){
          print(newvalue);
          setState(() {
          height=newvalue.round();
          });
        },

      )
      )


    ]
    ),),
    ),Expanded(child:
        Row(children:<Widget>[
        Expanded(  child: reusableCode(colour:kactiveCardColor,
            childcard:  Column(mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[
           Text('WEIGHT',style:klabelTextStyle),

           Text(weight.toString(),style:knumberTextStyle),
           Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [RoundIconButton(icon: FontAwesomeIcons.minus,onPressed:(){
                setState(() {
                  weight--;
                });
               },),
           SizedBox(
             width: 10.0,
           ),
           RoundIconButton(icon: FontAwesomeIcons.plus,onPressed:() {
             setState(() {
               weight++;
             });
           }),
                 ]),



    ]))),

          Expanded(  child: reusableCode(colour:kactiveCardColor,
              childcard:  Column(mainAxisAlignment: MainAxisAlignment.center,

                  children:<Widget>[
                    Text('AGE',style:klabelTextStyle),

                    Text(age.toString(),style:knumberTextStyle),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [RoundIconButton(icon: FontAwesomeIcons.minus,onPressed:(){
                          setState(() {
                            age--;
                          });
                        },),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(icon: FontAwesomeIcons.plus,onPressed:() {
                            setState(() {
                              age++;
                            });
                          }),
                        ]),



                  ]))),

        ]),
        ),

        largebutton(titletext:'CALCULATE',
            ontap:(){

              CalculatorBrain calci =CalculatorBrain(weight:weight,height:height);

          Navigator.push(context,MaterialPageRoute(
              builder:(context)=> ResultPage(bmiresult: calci.bmiCalculator(),resultText: calci.getResult(),interpretation: calci.getInterpretation(),
                 ) ));}),
  ]
      )
    );
  }
}




