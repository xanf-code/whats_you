import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whats_you/Extras/Licences.dart';
import 'package:whats_you/Extras/TC.dart';
import 'package:whats_you/Presentation/presentation.dart';
import 'package:whats_you/Webview/attackmap.dart';
import 'package:whats_you/details/Facebook_details.dart';
import 'package:whats_you/details/google.dart';
import 'package:whats_you/details/instagram.dart';
import 'package:whats_you/details/twitter.dart';
import 'package:whats_you/details/youtube.dart';
import 'package:whats_you/kaspersky_widget/widget.dart';
import 'Widgets/ChartCard.dart';
import 'Widgets/FAQCard.dart';
import 'package:supercharged/supercharged.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showCupertinoDialog(
              context: context,
              builder: (context) => new CupertinoAlertDialog(
                title: new Text(
                  'Are you sure?',
                  style: GoogleFonts.ubuntu(),
                ),
                content: new Text('Do you want to exit',
                    style: GoogleFonts.ubuntu()),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text('No',
                        style: GoogleFonts.ubuntu(color: Colors.white)),
                  ),
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: new Text('Yes',
                        style: GoogleFonts.ubuntu(color: Colors.white)),
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF121212),
            actions: <Widget>[
              DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      cancelButton: CupertinoActionSheetAction(
                        child: Text('Cancel',
                            style: GoogleFonts.ubuntu(color: Colors.white)),
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      ),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text('Rate App',
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white)),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              launch(
                                  "https://play.google.com/store/apps/details?id=co 4m.you.whats_you");
                            }),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.zoom_in,
                                color: Colors.white,
                              ),
                              Text('Check out other apps',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            launch(
                                "https://play.google.com/store/apps/dev?id=8692038640782019043");
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                BrandIcons.gmail,
                                color: Colors.white,
                              ),
                              Text('Drop an E-Mail',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            launch(
                                "mailto:darshanaswath@gmail.com?subject=App: WhatsYou App");
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              Text('Share App',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Share.share(
                                'Check out how much of your Private data is available online to the Public https://play.google.com/store/apps/details?id=co 4m.you.whats_you',
                                subject: 'WhatsYou Data Privacy');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.library_books,
                                color: Colors.white,
                              ),
                              Text(
                                'Terms and Conditions',
                                style: GoogleFonts.ubuntu(color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AppTC()));
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.verified_user,
                                color: Colors.white,
                              ),
                              Text('View Licences',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AppLicence()));
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.feedback,
                                color: Colors.white,
                              ),
                              Text('Feedback',
                                  style:
                                      GoogleFonts.ubuntu(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
            title: DelayedDisplay(
              slidingCurve: Curves.fastLinearToSlowEaseIn,
              child: Text(
                "Access Your Data",
                style: GoogleFonts.ubuntu(
                    foreground: Paint()..shader = linearGradient,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          backgroundColor: Color(0xFF132502),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF121212), Color(0xFF1F1C18)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 0.7])),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                        child: FadeIn(
                          1,
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    // left side padding is 40% of total width
                                    left:
                                        MediaQuery.of(context).size.width * .4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Facebook Data\n",
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text: "Facebook.com\n",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Know More",
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color:
                                                Colors.white.withOpacity(0.4),
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
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )),
                                ),
                              ],
                            ),
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
                        child: FadeIn(
                          2,
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    // left side padding is 40% of total width
                                    left:
                                        MediaQuery.of(context).size.width * .4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Twitter Data\n",
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text: "Twitter.com\n",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Know More",
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color:
                                                Colors.white.withOpacity(0.4),
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
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )),
                                ),
                              ],
                            ),
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
                        child: FadeIn(
                          3,
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    // left side padding is 40% of total width
                                    left:
                                        MediaQuery.of(context).size.width * .4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Instagram Data\n",
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text: "Instagram.com\n",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Know More",
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color:
                                                Colors.white.withOpacity(0.4),
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
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )),
                                ),
                              ],
                            ),
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
                        child: FadeIn(
                          4,
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    // left side padding is 40% of total width
                                    left:
                                        MediaQuery.of(context).size.width * .4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Youtube Data\n",
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text: "Youtube.com\n",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Know More",
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color:
                                                Colors.white.withOpacity(0.4),
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
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )),
                                ),
                              ],
                            ),
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
                        child: FadeIn(
                          5,
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    // left side padding is 40% of total width
                                    left:
                                        MediaQuery.of(context).size.width * .4,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Google Data\n",
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text: "Google.com\n",
                                              style: GoogleFonts.ubuntu(
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Know More",
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color:
                                                Colors.white.withOpacity(0.4),
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
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8),
                        child: Container(
                          child: DelayedDisplay(
                            slidingCurve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              "Data FAQ",
                              style: GoogleFonts.ubuntu(
                                  foreground: Paint()..shader = linearGradient,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        slidingCurve: Curves.fastLinearToSlowEaseIn,
                        child: Divider(
                          color: Colors.white38,
                          indent: 10,
                          endIndent: 390,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeIn(
                        6,
                        FAQCard(
                          text:
                              "We’re entering a new world in which data is more important than software.",
                          image:
                              "https://images.squarespace-cdn.com/content/v1/593460e85016e11115df644f/1580849788792-R8RX5ZQ3USAB04T8TI7Y/ke17ZwdGBToddI8pDm48kFQQgP34qnCpeHaeAOzTt7pZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIvwpK0aFuhG0GtLLHqvbV4raqY38tdDiF-KTEvoUH9G4/GD_Follow.gif",
                          title: "Why data?",
                        ),
                      ),
                      FadeIn(
                        7,
                        FAQCard(
                          text:
                              "Goal is to turn data into Information, and Information into Insight.",
                          image:
                              "https://www.intelligentvc.co.uk/wp-content/uploads/2015/11/animat-search-color.gif",
                          title: "Why is data important?",
                        ),
                      ),
                      FadeIn(
                        8,
                        FAQCard(
                          text: "Too Much.",
                          image:
                              "https://media1.giphy.com/media/UTjmeapJahb8asynPo/giphy.gif",
                          title:
                              "How much of my personal information is available online and to the public?",
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                DelayedDisplay(
                                  slidingCurve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    "Data Privacy",
                                    style: GoogleFonts.ubuntu(
                                        foreground: Paint()
                                          ..shader = linearGradient,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                DelayedDisplay(
                                  slidingCurve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    "Cyberthreat stats and maps",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white38, fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white38,
                                  indent: 1,
                                  endIndent: 300,
                                  thickness: 1,
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => KP()));
                              },
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[],
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => Maps()));
                              },
                              child: Image.asset("assets/icons/map.png")),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Maps()));
                          },
                          child: Row(
                            children: [
                              Text(
                                "For In-Detail Stats",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                DelayedDisplay(
                                  slidingCurve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    "Data Collection Evolution",
                                    style: GoogleFonts.ubuntu(
                                        foreground: Paint()
                                          ..shader = linearGradient,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                DelayedDisplay(
                                  slidingCurve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    "Amount of Data generated on the Internet",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white38, fontSize: 15),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white38,
                                  indent: 1,
                                  endIndent: 300,
                                  thickness: 1,
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => Presentation()));
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Wrap(
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
                                title: "Data Per Day",
                                subtitle: "2016",
                                iconColor: Color(0xFFFF8C00),
                                number: "28,875 GB"),
                            ChartCard(
                                title: "Data Per Day",
                                subtitle: "2020",
                                iconColor: Color(0xFFFF8C00),
                                number: "2.05 QB"),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          "We demand privacy, yet we glorify those that break into computers.",
                          maxLines: 1,
                          style: GoogleFonts.ubuntu(
                            color: Colors.white38,
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum _AniProps { opacity, translateX }

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AniProps>()
      ..add(_AniProps.opacity, 0.0.tweenTo(1.0))
      ..add(_AniProps.translateX, 130.0.tweenTo(0.0));

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      delay: (300 * delay).round().milliseconds,
      duration: 500.milliseconds,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: Transform.translate(
          offset: Offset(value.get(_AniProps.translateX), 0),
          child: child,
        ),
      ),
    );
  }
}
