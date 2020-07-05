import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_you/Widgets/whatCard.dart';
import '../constants/constants.dart';

class TwitterDetails extends StatelessWidget {
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
                            "Twitter",
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
                            "Twitter.com",
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
                            "Twitter is an American microblogging and social networking service on which users post and interact with messages known as tweets. Registered users can post, like, and retweet tweets, but unregistered users can only read them.",
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
                    title: """Twitter is one of the most popular social networking sites. Access your account data by clicking the link below.\n""",
                    Subtitle: """Note:- You have to login to your twitter account to see this information.""",
                    link: "https://twitter.com/settings/your_twitter_data/account",
                    brand: Icon(BrandIcons.twitter),
                  ),
                  WhatCard(
                    title: """Access your account History and download your account history related data by clicking the link below.\n""",
                    Subtitle: """Note:- You have to login to your twitter account to see this information.""",
                    link: "https://twitter.com/settings/your_twitter_data/account_history",
                    brand: Icon(BrandIcons.twitter),
                  ),
                  WhatCard(
                    title: """Access your account Apps and Device related information by clicking the link below.\n""",
                    Subtitle: """Note:- You have to login to your twitter account to see this information.""",
                    link: "https://twitter.com/settings/your_twitter_data/devices",
                    brand: Icon(BrandIcons.twitter),
                  ),
                ],
              ),
              Positioned(
                right: 30,
                top: 50,
                child: Hero(
                    tag: 3,
                    child: SvgPicture.asset("assets/icons/twitter.svg",
                        height: 240, width: 240)),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Hero(
                  tag: 4,
                  child: Text(
                    "2",
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
                icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
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
