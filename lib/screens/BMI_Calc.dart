import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class BMI_Calc extends StatefulWidget {
  BMI_Calc({Key key}) : super(key: key);
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BMI_Calc> {
  int currentindex = 0;
  String result = ' ';
  double height = 0;
  double weight = 0;
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator.',
            style: TextStyle(color: Colors.orange[800]),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xfffafafa),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      radioButton('Man', Colors.brown[200], 0),
                      radioButton('women', Colors.orangeAccent, 1),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Your Height In Cm:',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: .0),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: heightcontroller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Height',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Your weight In kg:',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: .0),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: weightcontroller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'weight',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //calculate button
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          height = double.parse(heightcontroller.value.text);
                          weight = double.parse(weightcontroller.value.text);
                        });

                        CalculateBMI(height, weight);
                      },
                      color: Colors.orangeAccent,
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  //BMI text
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Your BMI is : ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),

                  Container(
                    width: double.infinity,
                    child: Text(
                      "$result",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void CalculateBMI(double height, double weight) {
    double FinalResult = weight / (height * height / 10000);
    String bmi = FinalResult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  void changeindex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        height: 80.0,
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        child: FlatButton(
          color: currentindex == index ? color : Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          onPressed: () {
            changeindex(index);
          },
          child: Text(value,
              style: TextStyle(
                color: currentindex == index ? Colors.white : color,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
