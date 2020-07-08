import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customCard(String title, String spots, icon, String img) {
  return Card(
    color: Color(0xFF121212),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black]),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: CachedNetworkImageProvider("$img"),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              icon,
              size: 30.0,
              color: Colors.white,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  spots,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}