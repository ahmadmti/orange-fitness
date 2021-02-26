import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_fitness/widget/form_field.dart';

class SignUP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade100,
        title: Text("sign in"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * 0.12,
                width: width * 0.5,
                child: Image.asset(
                  "images/org.png",
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.deepOrangeAccent.shade100,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[800],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "First Name*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Last Name*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Email*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Phone*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Age*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Password*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: false,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: width * 0.7,
                height: 40,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "confirm password*",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent.shade100,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 3,
                        child: FormFieldWidget(
                          securePassword: true,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              AnimatedButton(
                  enabled: true,
                  height: 45,
                  width: 150,
                  color: Colors.deepOrangeAccent.shade100,
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  )),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Already a member?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customtextfield extends StatelessWidget {
  bool issecured;
  String hint;

  customtextfield({this.hint, this.issecured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: issecured,
        decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.black12,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent))),
        style: TextStyle(
            color: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.w600,
            fontSize: 23),
      ),
    );
  }
}
