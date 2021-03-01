import 'package:flutter/material.dart';
import 'package:orange_fitness/screens/BMI_Calc.dart';
import 'package:orange_fitness/screens/Calories_Calc.dart';
import 'package:orange_fitness/screens/Views_workoutEquip/Add_Equipment.dart';
import 'package:orange_fitness/screens/welcomepage.dart';
import 'package:orange_fitness/ui/search/search_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'injection_container.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // MyHomePage(),
        home: 
        // Calories_Calc()
        // Add_Equipments()
        //  MyHomePage(),
        SearchPage(),
        );
  }
}
