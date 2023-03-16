import 'package:flutter/material.dart';
class reusableCode extends StatelessWidget {
  reusableCode({@required this.colour, this.childcard,this.onPress});

  final Color colour;
  final childcard;
final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
        child: Container(

      child: childcard,

      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
        )
    );
  }
}