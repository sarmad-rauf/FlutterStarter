import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/news');
                },
                child: Text('News Demo'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/animation');
                },
                child: Text('Animation Demo'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pics');
                },
                child: Text('Pictures Demo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
