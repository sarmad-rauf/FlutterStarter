import 'package:flutter/material.dart';
import 'package:flutter_app/src/provider_demo/appstate.dart';
import 'package:flutter_app/src/provider_demo/screens/home_screen.dart';
import 'package:flutter_app/src/provider_demo/screens/list_screen.dart';
import 'package:provider/provider.dart';

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider demo',
      theme: ThemeData.dark(),
      home: ChangeNotifierProvider<AppState>(
        builder: (_) => AppState(),
        child: HomeScreen(),
      ),
      onGenerateRoute: (settings) => routes(settings),
    );
  }

  Route routes(RouteSettings settings) {
    return settings.name == "/" ? homePage() : listScreen();
  }

  MaterialPageRoute homePage() {
    return MaterialPageRoute(builder: (_) => HomeScreen());
  }

  MaterialPageRoute listScreen() {
    return MaterialPageRoute(builder: (_) => ListScreen());
  }
}
