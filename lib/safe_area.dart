import 'package:flutter/material.dart';

class SafeAreaScreen extends StatefulWidget {
  static const String id = "safearea";

  @override
  _SafeAreaScreenState createState() => _SafeAreaScreenState();
}

class _SafeAreaScreenState extends State<SafeAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          // ignore: missing_return
          children: List.generate(100, (index) {
            return Card(
              child: Center(child: Text("Item number $index")),
            );
          }),
        ),
      ),
    );
  }
}
