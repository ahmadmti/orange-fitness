import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_fitness/widget/form_field.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.orangeAccent.shade50,
          size: 30,
        ),
        backgroundColor: Colors.deepOrangeAccent.shade100,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "My Profile",
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
                  height: 10,
                ),
                Center(
                    child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.deepOrangeAccent.shade100,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white70,
                  ),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: width * 0.8,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
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
                          flex: 4,
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
                  width: width * 0.8,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
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
                          flex: 4,
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
                  width: width * 0.8,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
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
                          flex: 4,
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
                  width: width * 0.8,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
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
                          flex: 4,
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
                  width: width * 0.8,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
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
                          flex: 4,
                          child: FormFieldWidget(
                            securePassword: false,
                          )),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: width,
                  height: 45,
                  color: Colors.deepOrangeAccent.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.home_filled,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
