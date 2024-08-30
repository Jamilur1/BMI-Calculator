import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
 ResultPage({this.bmiResult,this.info,this.resultText});

  String? bmiResult;
  String? resultText;
  String? info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style:
              TextStyle(color: Color(0xffdafff97), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Result",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            width: 415,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff2b2b2b),
            ),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Your BMI Is",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "$resultText",
                      style: TextStyle(color: Colors.tealAccent),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Text("$bmiResult",style: TextStyle(
                  color: Colors.purpleAccent,fontWeight: FontWeight.bold,fontSize: 70
                ),)

              ],
            ),
          ),
          SizedBox(height: 15,),

          Text("$info",style: TextStyle(color: Colors.white,fontSize: 30),),
        ],
      ),
    );
  }
}
