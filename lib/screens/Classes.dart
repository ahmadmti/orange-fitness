import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Classes extends StatefulWidget {
  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:
            new Center(child: new Text("Classes", textAlign: TextAlign.center)),
        backgroundColor: Colors.deepOrangeAccent.shade100,
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Column contents vertically,
            crossAxisAlignment: CrossAxisAlignment
                .center, //Center Column contents horizontally,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'search',
                  icon: Icon(Icons.search),
                  labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
              TableCalendar(
                calendarController: _controller,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.start, //Center Row contents vertically,
                children: <Widget>[
                  Spacer(), // use Spacer
                  RaisedButton(
                    onPressed: () {},
                    child: Text('All'),
                    color: Colors.deepOrangeAccent.shade100,
                  ),
                  Spacer(), // use Spacer
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Body Toning'),
                    color: Colors.grey,
                  ),
                  Spacer(), // use Spacer
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Yoga'),
                    color: Colors.deepOrangeAccent.shade100,
                  ),
                  Spacer(), // use Spacer
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Zumba'),
                    color: Colors.deepOrangeAccent.shade100,
                  ),
                  Spacer(), // use Spacer
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.deepOrangeAccent.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("9.00 AM",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                      image:
                                          AssetImage('lib/assests/clock.png'),
                                      height: 15,
                                    ),
                                    Text("   0.30 ",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('lib/assests/user.png'),
                                      height: 25,
                                    ),
                                    Text("Nara Ali",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image(
                                image: AssetImage('lib/assests/man.png'),
                                height: 20,
                              ),
                              Text(" Body Toning\n" + "No Ratings yet",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image(
                                image: AssetImage('lib/assests/location.png'),
                                height: 20,
                              ),
                              Text(" Dammam 339.25KM",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.deepOrangeAccent.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("9.00 AM",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                      image:
                                          AssetImage('lib/assests/clock.png'),
                                      height: 15,
                                    ),
                                    Text("   0.30 ",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage('lib/assests/user.png'),
                                      height: 25,
                                    ),
                                    Text("Nara Ali",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.deepOrangeAccent.shade100,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image(
                                image: AssetImage('lib/assests/man.png'),
                                height: 20,
                              ),
                              Text(" Body Toning\n" + "No Ratings yet",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image(
                                image: AssetImage('lib/assests/location.png'),
                                height: 20,
                              ),
                              Text(" Dammam 339.25KM",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
