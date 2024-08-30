import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ismale = true;

  int weight = 60;
  int age = 80;

  double height = 160;

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
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    ismale = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ismale == true
                          ? Color(0xff3c3f36)
                          : Color(0xff2b2b2b),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        color: Color(0xffd1ff89),
                        size: 50,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: ismale == false
                            ? Color(0xff3c3f36)
                            : Color(0xff2b2b2b),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Color(0xffd1ff89),
                          size: 50,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff2b2b2b),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "$height",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                  fontWeight: FontWeight.bold),
                ),
                Slider(

                  inactiveColor: Colors.black,
                  value: height,
                  activeColor: Color(0xffd1ff89),
                  max: 200,


                  onChanged: (value) {

                    setState(() {

                      height = value.roundToDouble();
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff2b2b2b),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Weight",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minWidth: 2,
                          color: Color(0xffd1ff89),
                          onPressed: () {


                            setState(() {
                              weight--;
                            });

                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minWidth: 2,
                          color: Color(0xffd1ff89),
                          onPressed: () {

                            setState(() {
                              weight++;
                            });

                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Kg",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff2b2b2b),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minWidth: 2,
                          color: Color(0xffd1ff89),
                          onPressed: () {


                            setState(() {
                              age--;
                            });

                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minWidth: 2,
                          color: Color(0xffd1ff89),
                          onPressed: () {


                            setState(() {
                              age++;
                            });

                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Year",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {},
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightGreenAccent,
              minWidth: 380,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
