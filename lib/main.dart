import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Assignment 1"),
          ),
          body: ButtonDemo()),
    );
  }
}

class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDemoState();
  }
}


class ButtonDemoState extends State<ButtonDemo> {
  int number = 0;

  void addNumber() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$number",
                style: TextStyle(
                  fontSize: 90.0,
                )),
            RaisedButton(
              onPressed: addNumber,
              child: Text(
                "Click Me!",
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
