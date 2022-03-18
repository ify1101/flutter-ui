import 'package:flutter/material.dart';
import 'package:myapp_trial/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF075E54), accentColor: Color(0xFF128C7E)),
      home: Homescreen(),
    );
  }
}
