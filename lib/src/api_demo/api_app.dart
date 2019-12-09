import 'package:flutter/material.dart';
import 'package:flutter_app/src/api_demo/blocs/stories_provider.dart';
import 'screens/home_screen.dart';

class ApiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoriesProvider(
      child: MaterialApp(
        title: 'Api demo app',
        home: HomeScreen(),
      ),
    );
  }
}
