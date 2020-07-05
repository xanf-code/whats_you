import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

class YoutubeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300),
                        DelayedDisplay(
                          slidingCurve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            "Youtube",
                            style: GoogleFonts.ubuntu(
                              fontSize: 56,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        DelayedDisplay(
                          slidingCurve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            "Youtube.com",
                            style: GoogleFonts.ubuntu(
                              fontSize: 25,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Divider(color: Colors.white38),
                        SizedBox(height: 32),
                        DelayedDisplay(
                          slidingCurve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            "YouTube is a video sharing service that allows users to watch videos posted by other users and upload videos of their own. ... While several companies and organizations also use YouTube to promote their business, the vast majority of YouTube videos are created and uploaded by amateurs.",
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              color: contentTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.white38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: DelayedDisplay(
                      slidingCurve: Curves.fastLinearToSlowEaseIn,
                      child: Text(
                        'What do they know?',
                        style: GoogleFonts.ubuntu(
                          fontSize: 25,
                          color: const Color(0xffe7dfd5),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 30,
                top: 50,
                child: Hero(
                    tag: 7,
                    child: SvgPicture.asset("assets/icons/youtube.svg",
                        height: 240, width: 240)),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Hero(
                  tag: 8,
                  child: Text(
                    "4",
                    style: GoogleFonts.ubuntu(
                      fontSize: 247,
                      color: primaryTextColor.withOpacity(0.2),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back_ios,color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
