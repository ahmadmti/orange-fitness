import 'package:flutter/material.dart';
import 'package:orange_fitness/screens/Views_workoutEquip/Add_Equipment.dart';

class Equipments_page extends StatefulWidget {
  @override
  _Equipment_pageState createState() => _Equipment_pageState();
}

class _Equipment_pageState extends State<Equipments_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Workout',
              style: TextStyle(
                  color: Colors.deepOrangeAccent.shade100, fontSize: 22),
            ),
            Text('Equipments',
                style: TextStyle(color: Colors.blue[800], fontSize: 22))
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Add_Equipments()));
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
