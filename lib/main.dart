import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_you/webpage/webviewpage.dart';
import 'NewsPage/NewsPageHome.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/newspage': (BuildContext context) => MyNewsApp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}