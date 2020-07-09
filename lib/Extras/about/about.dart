import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whats_you/Extras/about/OSLUsed.dart';
import 'package:whats_you/Extras/about/change.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 70.0));

  Modal modal = new Modal();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF121212),
        appBar: AppBar(
          title: Text(
            "About WhatsYou",
            style: GoogleFonts.ubuntu(
                foreground: Paint()..shader = linearGradient,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF121212),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://webstockreview.net/images/google-logo-png-5.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Card(
                    color: Color(0xFF050a10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 15, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.update,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              Text("Version : v1.0.0",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              launch(
                                  "https://play.google.com/store/apps/details?id=com.you.whats_you");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Rate this app",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bug_report,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              Text("Feedback",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  child: Card(
                    color: Color(0xFF050a10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 15, bottom: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "About",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () => modal.changeBottomSheet(context),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.track_changes,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Changelog",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () => Navigator.pushNamed(context, "/libs"),
                            child: Row(
                              children: [
                                Icon(
                                  BrandIcons.github,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Open source libraries used",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Card(
                    color: Color(0xFF050a10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 15, bottom: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Author",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: ()=> launch("https://github.com/xanf-code"),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.supervisor_account,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Darshan Aswath",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              launch(
                                  "https://github.com/xanf-code/whats_you");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  BrandIcons.github,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Fork on GithHub",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: ()=> launch("mailto:darshanaswath@gmail.com?subject=WhatsYou App"),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Send Email",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  child: Card(
                    color: Color(0xFF050a10),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 15, bottom: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Logo Designer (Ronin)",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: ()=> launch("https://www.instagram.com/ron_in_7/"),
                            child: Row(
                              children: [
                                Icon(
                                  BrandIcons.instagram,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Instagram",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              launch(
                                  "http://www.app-icon-designer.com/");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  BrandIcons.internetexplorer,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Website",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: ()=> launch("mailto:roninjude07@gmail.com"),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text("Email",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
