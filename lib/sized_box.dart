import 'package:flutter/material.dart';

class SizedBoxScreen extends StatefulWidget {
  static const String id = 'size';
  @override
  _SizedBoxScreenState createState() => _SizedBoxScreenState();
}

class _SizedBoxScreenState extends State<SizedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Container(
                      child: SizedBox(
                        height: 70,
                        width: 200,
                        child: FlatButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text("Button 1"),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Container(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Container(
                    child: SizedBox(
                      height: 100,
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},
                        child: Text("Button 1"),
                      ),
                    ),
                  ),
                )),
          ),
          Container(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Container(
                    child: SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},
                        child: Text("Button 1"),
                      ),
                    ),
                  ),
                )),
          ),
          Expanded(
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Container(
                      child: SizedBox.expand(
                        child: FlatButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text("Button 1"),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
