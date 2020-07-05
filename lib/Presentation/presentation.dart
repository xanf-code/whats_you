import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_you/constants/constants.dart';
import 'package:whats_you/home_page.dart';

class Presentation extends StatefulWidget {
  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 20,),onTap: (){
            Navigator.pop(context);
          },),
          middle: Text(
          "Data Evolution",
          style: GoogleFonts.ubuntu(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
          backgroundColor: Color(0xFF121212),
        ),
        backgroundColor: Color(0xFF121212),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: DelayedDisplay(
                child: Center(
                  child: Text(
                    "“Privacy is dead, and social media holds the smoking gun.”",
                    maxLines: 1,
                    style: GoogleFonts.ubuntu(
                      color: Colors.white38,
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset("assets/Data/1.png"),
            Image.asset("assets/Data/2.png"),
            Image.asset("assets/Data/3.png"),
            Image.asset("assets/Data/4.png"),
            Image.asset("assets/Data/5.png"),
            Image.asset("assets/Data/7.png"),
          ],
        ),
      ),
    );
  }
}
