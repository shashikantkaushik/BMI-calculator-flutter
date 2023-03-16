import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
final int weight;
final int height;

double _bmi;

  String bmiCalculator(){
      double result;
_bmi=weight/pow(height/100,2);
      return _bmi.toStringAsFixed(1);
    }

    String getResult () {
      if (_bmi >= 25) {
        return 'Overweight';
      }
      else if (_bmi > 18.5) {
        return 'Normal';
      }
      else {
        return 'UnderWeight';
      }
    }

    String getInterpretation(){
      if (_bmi >= 25) {
        return 'You Have a Higher Body Weight.Try To Excercise';
      }
      else if (_bmi > 18.5) {
        return 'You Have a Normal Body Weight. Good Job';
      }
      else {
        return 'You Have a lower Body Weight . Please It More';
      }
    }
    }
