import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whats_you/Widgets/whatCard.dart';
import '../constants/constants.dart';

class FacebookDetails extends StatelessWidget {
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
                            "Facebook",
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
                            "Facebook.com",
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
                            "Facebook is a social networking site that makes it easy for you to connect and share with family and friends online. Originally designed for college students, Facebook was created in 2004 by Mark Zuckerberg while he was enrolled at Harvard University.",
                            maxLines: 6,
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
                  WhatCard(
                    title: """Check what have you done so far in facebook, you can see what posts you like/comment and you are tagged in.\n""",
                    Subtitle: """Note:- To know this, Click on open, then in "Your facebook information" section, click on Activity log.""",
                    link: "https://www.facebook.com/settings?tab=your_facebook_information",
                    brand: Icon(BrandIcons.facebook),
                  ),
                  WhatCard(
                    title: """Check out what facebook knows about you, you can see your personal messages here, even your comments, posts,picture and videos, Your liked posts, your friends and unfriended people list.\n""",
                    Subtitle: """Note:- You have to login through your browser to see your data.""",
                    link: "https://www.facebook.com/your_information/",
                    brand: Icon(BrandIcons.facebook),
                  ),
                  WhatCard(
                    title: """The good news is, you can download your private data and can delete your account anytime, To download your data click on the button and create a downloadable file.\n""",
                    Subtitle: """Note:- You can select what you want to download, like your friends list, your messages/posts etc.""",
                    link: "https://www.facebook.com/dyi/?x=AdkU_sowbKQxwuhG&referrer=yfi_settings",
                    brand: Icon(BrandIcons.facebook),
                  ),
                ],
              ),
              Positioned(
                right: 30,
                top: 50,
                child: Hero(
                    tag: 1,
                    child: SvgPicture.asset("assets/icons/facebook.svg",
                        height: 240, width: 240)),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Hero(
                  tag: 2,
                  child: Text(
                    "1",
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
                color: Colors.white,
                icon: Icon(Icons.arrow_back_ios),
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