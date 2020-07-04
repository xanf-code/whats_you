import 'package:cached_network_image/cached_network_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_you/details/Facebook_details.dart';
import 'package:whats_you/details/google.dart';
import 'package:whats_you/details/instagram.dart';
import 'package:whats_you/details/twitter.dart';
import 'package:whats_you/details/youtube.dart';
import 'Widgets/ChartCard.dart';
import 'Widgets/FAQCard.dart';
import 'Widgets/line_chart.dart';
import 'constants/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF132502),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF000000), Color(0xFF132502)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Access Your Data",
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => FacebookDetails()));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            // left side padding is 40% of total width
                            left: MediaQuery.of(context).size.width * .4,
                            top: 20,
                            right: 20,
                          ),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF043B8E),
                                Color(0xFF103755),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Facebook Data\n",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Facebook.com\n",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Know More",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 5,
                            child: Hero(
                                tag: 1,
                                child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  height: 150,
                                  width: 150,
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Hero(
                              tag: 2,
                              child: Text(
                                "1",
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 150,
                                    color: Colors.white.withOpacity(0.2)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => TwitterDetails()));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            // left side padding is 40% of total width
                            left: MediaQuery.of(context).size.width * .4,
                            top: 20,
                            right: 20,
                          ),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF043B8E),
                                Color(0xFF103755),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Twitter Data\n",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Twitter.com\n",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Know More",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 15,
                            left: 5,
                            child: Hero(
                                tag: 3,
                                child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  height: 150,
                                  width: 150,
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Hero(
                              tag: 4,
                              child: Text(
                                "2",
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 150,
                                    color: Colors.white.withOpacity(0.2)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => InstagramDetails()));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            // left side padding is 40% of total width
                            left: MediaQuery.of(context).size.width * .4,
                            top: 20,
                            right: 20,
                          ),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF043B8E),
                                Color(0xFF103755),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Instagram Data\n",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Instagram.com\n",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Know More",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            left: 5,
                            child: Hero(
                                tag: 5,
                                child: SvgPicture.asset(
                                  "assets/icons/Instagram.svg",
                                  height: 150,
                                  width: 150,
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Hero(
                              tag: 6,
                              child: Text(
                                "3",
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 150,
                                    color: Colors.white.withOpacity(0.2)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => YoutubeDetails()));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            // left side padding is 40% of total width
                            left: MediaQuery.of(context).size.width * .4,
                            top: 20,
                            right: 20,
                          ),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF043B8E),
                                Color(0xFF103755),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Youtube Data\n",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Youtube.com\n",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Know More",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 5,
                            child: Hero(
                                tag: 7,
                                child: SvgPicture.asset(
                                  "assets/icons/youtube.svg",
                                  height: 150,
                                  width: 150,
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Hero(
                              tag: 8,
                              child: Text(
                                "4",
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 150,
                                    color: Colors.white.withOpacity(0.2)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => GoogleDetails()));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            // left side padding is 40% of total width
                            left: MediaQuery.of(context).size.width * .4,
                            top: 20,
                            right: 20,
                          ),
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF043B8E),
                                Color(0xFF103755),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Google Data\n",
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: "Google.com\n",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Know More",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            left: 5,
                            child: Hero(
                                tag: 9,
                                child: SvgPicture.asset(
                                  "assets/icons/google.svg",
                                  height: 150,
                                  width: 150,
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Hero(
                              tag: 10,
                              child: Text(
                                "5",
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 150,
                                    color: Colors.white.withOpacity(0.2)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Data FAQ",
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FAQCard(
                  text:
                      "We’re entering a new world in which data may be more important than software.",
                  image:
                      "https://images.squarespace-cdn.com/content/v1/593460e85016e11115df644f/1580849788792-R8RX5ZQ3USAB04T8TI7Y/ke17ZwdGBToddI8pDm48kFQQgP34qnCpeHaeAOzTt7pZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIvwpK0aFuhG0GtLLHqvbV4raqY38tdDiF-KTEvoUH9G4/GD_Follow.gif",
                  title: "Why data?",
                ),
                FAQCard(
                  text:
                      "- Know What You Are Doing Well\n- Make The Most Of Your Money\n - Improve People’s Lives",
                  image:
                      "https://www.intelligentvc.co.uk/wp-content/uploads/2015/11/animat-search-color.gif",
                  title: "Why is data so important?",
                ),
                FAQCard(
                  text: "Too Much.",
                  image:
                      "https://media1.giphy.com/media/UTjmeapJahb8asynPo/giphy.gif",
                  title:
                      "How much of my personal information is available online and to the public?",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Data Collection Evolution Charts",
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Amount of Data generated on the Internet",
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  children: <Widget>[
                    ChartCard(
                        title: "Data Per Day",
                        subtitle: "1997",
                        iconColor: Color(0xFFFF8C00),
                        number: "100 GB"),
                    ChartCard(
                        title: "Data Per Hour",
                        subtitle: "2002",
                        iconColor: Color(0xFFFF8C00),
                        number: "100 GB"),
                    ChartCard(
                        title: "Data Per Second",
                        subtitle: "2016",
                        iconColor: Color(0xFFFF8C00),
                        number: "28,875 GB"),
                    ChartCard(
                        title: "Data Per Day",
                        subtitle: "2020",
                        iconColor: Color(0xFFFF8C00),
                        number: "2.5 QB"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
