import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

class FacebookDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300),
                        Text(
                          "Facebook",
                          style: GoogleFonts.ubuntu(
                            fontSize: 56,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Facebook.com",
                          style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 32),
                        Text(
                          "Facebook is a social networking site that makes it easy for you to connect and share with family and friends online. Originally designed for college students, Facebook was created in 2004 by Mark Zuckerberg while he was enrolled at Harvard University.",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.ubuntu(
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'What do they know?',
                      style: GoogleFonts.ubuntu(
                        fontSize: 25,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 30,
              top: 50,
              child: Hero(
                  tag: 1,
                  child: SvgPicture.asset("assets/icons/facebook.svg",height: 250,width: 250)),
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
                    color: primaryTextColor.withOpacity(0.08),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
