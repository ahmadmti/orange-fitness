import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
            child: new Text("Homepage", textAlign: TextAlign.center)),
        backgroundColor: Colors.deepOrangeAccent.shade100,
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        actions: <Widget>[],
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //Center Column contents vertically,
          crossAxisAlignment:
              CrossAxisAlignment.center, //Center Column contents horizontally,
          children: <Widget>[
            //   MaterialButton(
            //   onPressed: () {},
            //   color: Colors.red,
            //   textColor: Colors.white,
            //   padding: EdgeInsets.all(75),
            //   shape: CircleBorder(),
            // ),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.start, //Center Row contents vertically,
              children: <Widget>[
                Icon(
                  Icons.category,
                  size: 50,
                  color: Colors.deepOrangeAccent.shade100,
                ),
                Text("OFFERS",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue))
              ],
            ),
            Image(
              image: AssetImage('lib/assests/offer.png'),
              height: 150,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.start, //Center Row contents vertically,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.deepOrangeAccent.shade100,
                ),
                Text("Tracking",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ],
            ),

            Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.start, //Center Row contents vertically,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print("CLickd");
                  },
                  child: Text(
                    "1 Lama",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("CLickd");
                  },
                  child: Text(
                    "2 Sara",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("CLickd");
                  },
                  child: Text(
                    "3 Nour",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("CLickd");
                  },
                  child: Text(
                    "4 Salma",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
