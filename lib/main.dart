import 'package:flutter/material.dart';
import 'http.dart';

void main() {
  runApp(MaterialApp(title: 'Navigation Basics', home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First day - Flutter"),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                },
                child: Text("Widget"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HttpPage()));
                },
                child: Text("HTTP"),
              )
            ],
          )),
    );
  }
}
