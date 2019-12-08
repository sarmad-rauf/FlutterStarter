import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class ApiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api demo app',
      home: HomeScreen(),
    );
  }
}
