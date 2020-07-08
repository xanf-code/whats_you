import 'package:cached_network_image/cached_network_image.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whats_you/havebeenpawnedAPI/service/service.dart';
import 'package:whats_you/havebeenpawnedAPI/model/model.dart';

class HBP extends StatefulWidget {
  @override
  _HBPState createState() => _HBPState();
}

class _HBPState extends State<HBP> {
  List<Pawned> _pawned;
  bool _loading;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getNames().then((pawned) {
      setState(() {
        _pawned = pawned;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            backgroundColor: Color(0xFF121212),
            appBar: AppBar(
              backgroundColor: Color(0xFF121212),
              title: DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: Text(
                  "Data Breach Stats",
                  style: GoogleFonts.ubuntu(
                      foreground: Paint()..shader = linearGradient,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: null == _pawned ? 0 : _pawned.length,
                  itemBuilder: (context, index) {
                    Pawned pawned = _pawned[index];
                    return InkWell(
                      onTap: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF121212),
                                        Color(0xFF1F1C18)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.3, 0.7]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                height: 700,
                                child: Container(
                                  color: Color(0xFF121212),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      physics: BouncingScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: CachedNetworkImage(
                                                imageUrl: pawned.logoPath,
                                                height: 100,
                                                width: 145,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                pawned.domain,
                                                style: GoogleFonts.ubuntu(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Colors.white54),
                                              ),
                                            ),
                                          ),
                                          Html(
                                            data: pawned.description,
                                            style: {
                                              "body": Style(
                                                color: Colors.white,
                                                fontSize: FontSize(17.0),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Breach Date: ",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white54,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                                TextSpan(
                                                    text:
                                                        "${pawned.breachDate.day}/${pawned.breachDate.month}/${pawned.breachDate.year}",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Compromised accounts: ",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white54,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                                TextSpan(
                                                    text: pawned.pwnCount
                                                        .toString()
                                                        .replaceAllMapped(
                                                            new RegExp(
                                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                                            (Match m) =>
                                                                '${m[1]},'),
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ]),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text:
                                                            "Compromised data: ",
                                                        style: GoogleFonts.ubuntu(
                                                            color: Colors.white54,
                                                            fontSize: 19,
                                                            fontWeight: FontWeight
                                                                .normal)),
                                                    TextSpan(
                                                        text: pawned.dataClasses[
                                                                    0] ==
                                                                null
                                                            ? Container()
                                                            : "\n\n- ${pawned.dataClasses.map((x) => x)}",
                                                        style: GoogleFonts.ubuntu(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF232526),
                              Color(0xFF414345),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: CachedNetworkImage(
                                imageUrl: pawned.logoPath,
                                height: 100,
                                width: 145,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10.0, left: 15),
                                  child: SizedBox(
                                    width: 300,
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Host : ",
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: pawned.title,
                                            style: GoogleFonts.ubuntu(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 15, bottom: 5),
                                  child: Text(
                                    pawned.domain,
                                    style: GoogleFonts.ubuntu(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white54),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: pawned.isSensitive == true
                                        ? Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.centerLeft,
                                                margin: EdgeInsets.only(top: 5),
                                                child: Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.red,
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 1)),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(top: 5),
                                                child: Text("Sensitive Data",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.centerLeft,
                                                margin: EdgeInsets.only(top: 5),
                                                child: Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.blue,
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 1)),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(top: 5),
                                                child: Text("Insensitive Data",
                                                    style: GoogleFonts.ubuntu(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
      ),
    );
  }
}
