import 'dart:math';

class Logic{

  Logic({this.height,this.weight});

  int? height;
  int? weight;
  double bmi = 0;

  String calculateBmi(){

    bmi = (weight! / pow(height! / 100,2));
    return bmi.toStringAsFixed(1);

  }


  String getresult(){

    if (bmi>=25){

      return "Over Weight";

    }
    else if (bmi>18.5){

      return "Normal";
    }

    else {

      return "Under weight";
    }

    }
    String getInfo(){


      if (bmi>=25){

        return "Eat less & Do Exercise";

      }
      else if (bmi>18.5){

        return "You are in Perfect Shape";
      }

      else {

        return "Eat More";
      }
    }


  }

