
import 'dart:math';
class Brain{

  final int height;
  final int weight;

  double _bmi;
  Brain({this.height,this.weight});


  String calculateBMI()
  {
     _bmi = weight/pow(height/100, 2);
     return _bmi.toStringAsFixed(1);
  }

String getResult(){

    if( _bmi >=25){

      return 'overweight';
    }else if(_bmi >18.5){
      return 'normal weight';
    }else{
      return 'under weight';
    }



}

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your Overweight , Take care ';
    } else if (_bmi > 18.5) {
      return ' Your normal weight , Good Job';
    } else {
      return ' Your under weight, Eat More';
    }
  }

}