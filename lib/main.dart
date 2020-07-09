import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_you/Extras/about/OSLUsed.dart';
import 'package:whats_you/PrivacyNews/PrivacyPageHome.dart';
import 'package:whats_you/havebeenpawnedAPI/main/hbpw.dart';
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
        '/home' :  (BuildContext context) => HomePage(),
        '/newspage': (BuildContext context) => MyNewsPage(),
        '/privacypage': (BuildContext context) => MyPrivacyPage(),
        '/databreach': (BuildContext context) => HBP(),
        '/libs': (BuildContext context) => LibrariesUsed(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}