import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'line_chart.dart';

class ChartCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String number;
  final Color iconColor;
  const ChartCard({
    Key key,
    this.title,
    this.number,
    this.iconColor, this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth / 2-10,
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: CachedNetworkImage(
                          imageUrl:
                          "https://cdn1.iconfinder.com/data/icons/data-organization-4/66/11-512.png",
                          color: Colors.white,
                          height: 12,
                          width: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        title,
                        style: GoogleFonts.ubuntu(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.ubuntu(),
                            children: [
                              TextSpan(
                                  text: "$number \n",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: subtitle,
                                  style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 12,
                                    height: 2,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: LineReportChart(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
