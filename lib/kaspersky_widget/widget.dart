import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whats_you/constants/constants.dart';

class KP extends StatefulWidget {
  KP({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _KPState createState() => _KPState();
}

const htmlData =
    """<iframe width="640" height="640" src="https://cybermap.kaspersky.com/en/widget/dynamic/dark" frameborder="0">""";

class _KPState extends State<KP> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          middle: Text(
            "Real Time CyberThreat Map",
            style: GoogleFonts.ubuntu(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFF121212),
        ),
        backgroundColor: Color(0xFF121212),
        child: ListView(
          children: [
            Html(
              data: htmlData,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Text(
                    "Legend",
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_drop_down,color: Colors.white,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 8,bottom: 8),
              child: Text(
                "OAS - On Access Scan",
                style:
                    GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "ODS - On Demand Scan",
                style:
                    GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "MAV - Mail Antivirus",
                style:
                    GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "WAV - Web Antivirus",
                style:
                    GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "KAS - Kaspersky Anti-Spam",
                style:
                    GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "BAD - Botnet Activity Detection",
                style:
                GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "IDS - Intrusion Detection Scan",
                style:
                GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,bottom: 8),
              child: Text(
                "VUL - Vulnerability Scan",
                style:
                GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 12.0),
              child: GestureDetector(
                onTap: ()=> launch("https://cybermap.kaspersky.com/stats/"),
                child: Row(
                  children:[
                    Text(
                      "For In-Detail Stats",
                      style:
                      GoogleFonts.ubuntu(color:Colors.blue,fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    SizedBox(width: 7,),
                    Icon(Icons.arrow_forward,color: Colors.blue,),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              slidingCurve: Curves.fastLinearToSlowEaseIn,
              child: Divider(
                color: Colors.white38,
                indent: 10,
                endIndent: 390,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21.0,top: 10,bottom: 20),
              child: DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: Text(
                  'Why is Cybersecurity important?',
                  style: GoogleFonts.ubuntu(
                    fontSize: 25,
                    color: const Color(0xffe7dfd5),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            DelayedDisplay(
              slidingCurve: Curves.fastLinearToSlowEaseIn,
              child: Padding(
                padding: const EdgeInsets.only(left: 21.0,right: 10),
                child: Text(
                  """Cybersecurity risk is increasing, driven by global connectivity and usage of cloud services, like Amazon Web Services, to store sensitive data and personal information. Widespread poor configuration of cloud services paired with increasingly sophisticated cyber criminals means the risk that your organization suffers from a successful cyber attack or data breach is on the rise.

Gone are the days of simple firewalls and antivirus software being your sole security measures. Business leaders can no longer leave information security to cybersecurity professionals. 

Cyber threats can come from any level of your organization. You must educate your staff about simple social engineering scams like phishing and more sophisticated cybersecurity attacks like ransomware attacks (think WannaCry) or other malware designed to steal intellectual property or personal data.

GDPR and other laws mean that cybersecurity is no longer something businesses of any size can ignore. Security incidents regularly affect businesses of all sizes and often make the front page causing irreversible reputational damage to the companies involved.

If you are not yet worried about cybersecurity, you should be.""",
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    color: contentTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
