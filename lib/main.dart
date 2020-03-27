import 'package:flutter/material.dart';
import 'package:toptenwidget/align.dart';
import 'package:toptenwidget/clip_r_rect.dart';
import 'package:toptenwidget/flexible.dart';
import 'package:toptenwidget/future_builder.dart';
import 'package:toptenwidget/media_query.dart';
import 'package:toptenwidget/rich_text.dart';
import 'package:toptenwidget/safe_area.dart';
import 'package:toptenwidget/sized_box.dart';
import 'package:toptenwidget/wrap.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        SafeAreaScreen.id: (context) => SafeAreaScreen(),
        WrapScreen.id: (context) => WrapScreen(),
        RichTextScreen.id: (context) => RichTextScreen(),
        ClipRRectScreen.id: (context) => ClipRRectScreen(),
        MediaQueryScreen.id: (context) => MediaQueryScreen(),
        FlexibleScreen.id: (context) => FlexibleScreen(),
        SizedBoxScreen.id: (context) => SizedBoxScreen(),
        AlignScreen.id: (context) => AlignScreen(),
        FutureBuilderScreen.id: (context) => FutureBuilderScreen(),
      },
    );
  }
}
