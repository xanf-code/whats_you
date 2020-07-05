import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatCard extends StatelessWidget {
  final String title;
  final String Subtitle;
  final Icon brand;
  final String link;
  const WhatCard({
    Key key, this.title, this.Subtitle, this.brand, this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(trailing: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
        title: Text(
          title,
          style: GoogleFonts.ubuntu(color: Colors.white),
        ),
        subtitle: Text(
          'Tap to see more!',
          style: GoogleFonts.ubuntu(color: Colors.white),
        ),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                  Subtitle,
                  style: GoogleFonts.ubuntu(fontSize: 16,color: Colors.white54)
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            buttonHeight: 52.0,
            buttonMinWidth: 90.0,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(icon: brand, onPressed: () => launch(link)),
                  Text('Open',style: GoogleFonts.ubuntu(color: Colors.white),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
