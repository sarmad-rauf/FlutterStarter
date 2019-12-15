import 'package:flutter/material.dart';
import 'package:flutter_app/src/provider_demo/appstate.dart';
import 'package:provider/provider.dart';

class TextDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    return Container(
      child: Text(
        appState.getDisplayText,
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}
