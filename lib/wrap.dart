import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget {
  static const String id = 'wrap';
  @override
  _WrapScreenState createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("Button 1"),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("Button 1"),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("Button 1"),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("Button 1"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
