import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptenwidget/align.dart';
import 'package:toptenwidget/clip_r_rect.dart';
import 'package:toptenwidget/future_builder.dart';
import 'package:toptenwidget/media_query.dart';
import 'package:toptenwidget/rich_text.dart';
import 'package:toptenwidget/safe_area.dart';
import 'package:toptenwidget/sized_box.dart';
import 'package:toptenwidget/wrap.dart';

import 'flexible.dart';

final globalKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  static const String id = "home";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    List<Container> cards = [
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SafeAreaScreen.id);
            globalKey.currentState.showSnackBar(
              SnackBar(
                content: Text("I am number 1"),
              ),
            );
          },
          child: Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Safe Area",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, WrapScreen.id);
          },
          child: Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Wrap",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RichTextScreen.id);
          },
          child: Card(
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Center(
                child: Text(
                  "Rich Text",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ClipRRectScreen.id);
          },
          child: Card(
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Center(
                child: Text(
                  "ClipRRect",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MediaQueryScreen.id);
          },
          child: Card(
            color: Colors.yellowAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  "Media Query",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, FutureBuilderScreen.id);
          },
          child: Card(
            color: Colors.yellowAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  "Future Builder ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, FlexibleScreen.id);
          },
          child: Card(
            color: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Center(
                child: Text(
                  "Flexible",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SizedBoxScreen.id);
          },
          child: Card(
            color: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Center(
                child: Text(
                  "SizedBox",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AlignScreen.id);
          },
          child: Card(
            color: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(7),
            elevation: 10,
            child: Container(
              child: Center(
                child: Text(
                  "Align",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      key: globalKey,
      body: GridView.builder(
        itemCount: cards.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return (cards[index]);
        },
      ),
    );
  }
}
