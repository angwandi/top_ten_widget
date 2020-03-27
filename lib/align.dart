import 'package:flutter/material.dart';

class AlignScreen extends StatefulWidget {
  static const String id = 'align';
  @override
  _AlignScreenState createState() => _AlignScreenState();
}

class _AlignScreenState extends State<AlignScreen> {
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
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
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
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Position?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
