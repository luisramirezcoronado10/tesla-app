import 'package:flutter/material.dart';
import 'package:tesla_demo/pages/home.dart';
import 'package:tesla_demo/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesla Demo',
      home: Splash(),
    );
  }
}
