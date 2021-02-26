import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class Calories_Calc extends StatefulWidget {
  Calories_Calc({Key key}) : super(key: key);
  _CaloriesCalculatorState createState() => _CaloriesCalculatorState();
}

class _CaloriesCalculatorState extends State<Calories_Calc> {
  int currentindex = 0;
  String result = ' ';
  double height = 0;
  double weight = 0;
  double age = 0;
  bool isFemale;
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Calories Calculator.',
            style: TextStyle(
              color: Colors.orangeAccent.shade50,
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.deepOrangeAccent.shade100,
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
                      radioButton('women', Colors.blue, 1),
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
                  Text(
                    'Your age:',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: .0),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: agecontroller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'age',
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
                          age = double.parse(agecontroller.value.text);
                        });

                        Calculate_Fcalories(
                          height,
                          weight,
                          age,
                        );
                      },
                      color: Colors.deepOrangeAccent.shade100,
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  //BMI text
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Your calories intake is : ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
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

  void Calculate_Fcalories(double height, double weight, double age) {
    double FinalResult =
        655.09 + (9.56 * weight) + (1.84 * height) - (4.67 * age);
    String Fcalories = FinalResult.toStringAsFixed(1);
    setState(() {
      result = Fcalories;
    });
  }

  void Calculate_Mcalories(double height, double weight, double age) {
    double FinalResult = 66.47 + (13.75 * weight) + (5 * height) - (6.75 * age);
    String Fcalories = FinalResult.toStringAsFixed(0);
    setState(() {
      result = Fcalories;
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
