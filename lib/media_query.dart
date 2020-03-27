import 'package:flutter/material.dart';

class MediaQueryScreen extends StatefulWidget {
  static const String id = 'media';
  @override
  _MediaQueryScreenState createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: Container(
        child: (orientation == Orientation.portrait)
            ? Column(
                children: <Widget>[
                  Flexible(
                    flex: 5,
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
                ],
              )
            : Row(
                children: <Widget>[
                  Flexible(
                    flex: 5,
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
                ],
              ),
      ),
    );
  }
}
