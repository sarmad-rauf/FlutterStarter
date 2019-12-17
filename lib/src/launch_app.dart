import 'package:flutter/material.dart';
import 'package:flutter_app/src/animation_demo/screens/animation_screen.dart';
import 'package:flutter_app/src/api_demo/screens/news_screen.dart';
import 'package:flutter_app/src/dashboard.dart';
import 'package:flutter_app/src/login_bloc_demo/screens/login_screen.dart';
import 'package:flutter_app/src/pics_demo/pics_screen.dart';

import 'api_demo/blocs/stories_provider.dart';

class LaunchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => LoginScreen(),
        '/dashboard': (_) => DashboardScreen(),
        '/animation': (_) => AnimationScreen(),
        '/news': (_) => StoriesProvider(child: NewsScreen()),
        '/pics': (_) => PicsScreen(),
      },
    );
  }
}
