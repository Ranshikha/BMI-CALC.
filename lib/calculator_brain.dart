
import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.weight,this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI(){
     _bmi = weight/(pow(height/100, 2));

    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'OverWeight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have weight higher than Normal,So Do exercise';
    }
    else if(_bmi > 18.5){
      return 'You have normal Body weight , God Job!';
    }
    else{
      return 'You have lower weight than normal , Eat a more bit food';
    }
  }
}