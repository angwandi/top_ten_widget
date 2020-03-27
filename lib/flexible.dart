import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  static const String id = 'flexible';
  @override
  _FlexibleScreenState createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Container(
        child: (orientation == Orientation.portrait)
            ? Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            : Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
