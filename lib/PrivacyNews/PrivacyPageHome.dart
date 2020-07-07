import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:whats_you/PrivacyNews/datamodel/tabbardata.dart';
import 'package:provider/provider.dart';
import 'package:whats_you/PrivacyNews/home_page_widgets/newscardcontainer.dart';
import 'dart:ui';
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
}

class MyPrivacyPage extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TabBarData(),
      child: CupertinoPageScaffold(
        backgroundColor: Color(0xFF121212),
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(onTap: ()=> Navigator.pop(context),child: Icon(CupertinoIcons.back,color: Colors.white)),
          backgroundColor: Color(0xFF121212),
          middle: Text(
            "WhatsYou Privacy News",
            style: GoogleFonts.ubuntu(
                foreground: Paint()..shader = linearGradient,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        child: PagesLayout(),
      ),
    );
  }
}

class PagesLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TabBarData>(
      builder: (context, data, child) {
        Widget tabWidget;
        switch (data.bottomIndex) {
          case 0:
            {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8, top: 8, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    NewsCardContainer(
                        newsUrl: data
                            .tabBarModel(index: data.activeIndex)
                            .getNewsUrl()),
                  ],
                ),
              );
            }
        }
        return tabWidget;
      },
    );
  }
}
