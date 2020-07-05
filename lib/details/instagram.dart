import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_you/Widgets/whatCard.dart';
import '../constants/constants.dart';

class InstagramDetails extends StatelessWidget {
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
                            "Instagram",
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
                            "Instagram.com",
                            style: GoogleFonts.ubuntu(
                              fontSize: 25,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Divider(color: Colors.white38),
                        SizedBox(height: 28),
                        DelayedDisplay(
                          slidingCurve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            "Instagram is an American photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger and launched in October 2010 on iOS.",
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              color: contentTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 28),
                        Divider(color: Colors.white38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21.0),
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
                    tag: 5,
                    child: SvgPicture.asset("assets/icons/Instagram.svg",
                        height: 240, width: 240)),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Hero(
                  tag: 6,
                  child: Text(
                    "3",
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
