import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:orange_fitness/screens/Loginscreen.dart';
import 'package:orange_fitness/screens/sign_up.dart';
import 'package:orange_fitness/screens/signupscreen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/back1.png'), fit: BoxFit.fill)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * .15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Welcome!',
                        style: TextStyle(
                            fontSize: 45,
                            fontFamily: 'font1',
                            color: Color(0xFFFE7550)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Welcome To Orange Fitness Application. ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 35,
                      ),
                      AnimatedButton(
                        enabled: true,
                        height: 50,
                        width: 130,
                        color: Color(0xFFFE7550),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginscreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AnimatedButton(
                            enabled: true,
                            height: 50,
                            width: 130,
                            color: Color(0xFFFE7550),
                            onPressed: () {
                              //Navigator.push(
                              // context,
                              //MaterialPageRoute(
                              // builder: (context) => Loginscreen()));
                            },
                            child: Text(
                              'Guest',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            //height: 50,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => SignUP()));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xFFFE7550),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
