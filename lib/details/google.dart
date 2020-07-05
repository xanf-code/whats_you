import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brand_icons/flutter_brand_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_you/Widgets/whatCard.dart';
import '../constants/constants.dart';

class GoogleDetails extends StatelessWidget {
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
                            "Google",
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
                            "Google.com",
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
                            "Originally known as BackRub. Google is a search engine that started development in 1996 by Sergey Brin and Larry Page as a research project at Stanford University to find files on the Internet.",
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
                    title: """Google creates a profile of yourself based on the sites you visit, guessing your age, gender and interests and then use this data to serve you more relevant ads. Use this BUTTON to know how Google sees you on the internet.\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://adssettings.google.com/authenticated",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """Google stores a list of usernames and passwords that you have typed in Google Chrome or Android for logging into various websites. They even have a website too where you can view all these passwords in plain text.\n""",
                    Subtitle: "Note:- You have to login to your google account see this data.",
                    link: "https://accounts.google.com/signin/v2/sl/pwd?passive=1209600&osid=1&continue=https%3A%2F%2Fpasswords.google.com%2F&followup=https%3A%2F%2Fpasswords.google.com%2F&rart=ANgoxcelNBvce7ZncVKLmXw_Cu7CeJym7IOL2-YNuSHHNG02UmGEkygyw_95MWCFPzUIrtl9db9iIOhQ2iOQbiwME46B-qEJpg&authuser=0&flowName=GlifWebSignIn&flowEntry=ServiceLogin",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """Your Android phone or the Google Maps app on your iPhone is silently reporting your location and velocity (are you moving and if yes, how fast are you moving) back to Google servers. You can find the entire location history on the Google Maps website and you also have the option to export this data as KML files that can be viewed inside Google Earth or even Google Drive. If you want to know where have you been earlier, you can see each and every details.\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://www.google.com/maps/timeline?pb",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """Google record every search term that you’ve ever typed into their search boxes. They keep a log of every Google ad that you have clicked on various websites,Want to see what google logs about you\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://myactivity.google.com/myactivity",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """If you are a Google Now user, you can see data of all your audio search queries, such as OK Google\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://myactivity.google.com/myactivity?restrict=vaa",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """Worried that someone else is using your Google account or it could be hacked? Open the activity report to see a log of every device that has recently connected into your Google account. You’ll also get to know the I.P. Addresses and the approximate geographic location. Unfortunately, you can’t remotely log out of a Google session.\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://myaccount.google.com/device-activity",
                    brand: Icon(BrandIcons.google),
                  ),
                  WhatCard(
                    title: """Do you want to see your data that google has? you can download it in your mobile/computer, just go to the link and create an archive of the data.\n""",
                    Subtitle: "Note:- You have to login in to the Google account through your browser to see your data.",
                    link: "https://takeout.google.com/settings/takeout",
                    brand: Icon(BrandIcons.google),
                  ),
                ],
              ),
              Positioned(
                right: 30,
                top: 50,
                child: Hero(
                    tag: 9,
                    child: SvgPicture.asset("assets/icons/google.svg",
                        height: 240, width: 240)),
              ),
              Positioned(
                top: 60,
                left: 32,
                child: Hero(
                  tag: 10,
                  child: Text(
                    "5",
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
