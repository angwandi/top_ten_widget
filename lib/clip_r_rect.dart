import 'package:flutter/material.dart';

class ClipRRectScreen extends StatefulWidget {
  static const String id = 'clip_r_rec_text';
  @override
  _ClipRRectScreenState createState() => _ClipRRectScreenState();
}

class _ClipRRectScreenState extends State<ClipRRectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            //Can work with any other widgets: Container,...
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1509233725247-49e657c54213?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
