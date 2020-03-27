import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  static const String id = 'rich_text';
  @override
  _RichTextScreenState createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Dems Dema apps",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: " \n2020",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
