import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTC extends StatefulWidget {
  @override
  _AppTCState createState() => _AppTCState();
}

class _AppTCState extends State<AppTC> {
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
            "Terms & Conditions",
            style: GoogleFonts.ubuntu(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFF121212),
        ),
        backgroundColor: Color(0xFF121212),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DelayedDisplay(
                slidingCurve: Curves.fastLinearToSlowEaseIn,
                child: Text(
                  """Darshan Aswath is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.

The WhatsYou Data Privacy app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the WhatsYou Data Privacy app won’t work properly or at all.

The app does use third party services that declare their own Terms and Conditions.

Link to Terms and Conditions of third party service providers used by the app

Google Play Services
You should be aware that there are certain things that Darshan Aswath will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Darshan Aswath cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.

If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.

Along the same lines, Darshan Aswath cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, Darshan Aswath cannot accept responsibility.

With respect to Darshan Aswath’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. Darshan Aswath accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.

At some point, we may wish to update the app. The app is currently available on Android & iOS – the requirements for both systems(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. Darshan Aswath does not promise that it will always update the app so that it is relevant to you and/or works with the Android & iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.

Changes to This Terms and Conditions

I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.

These terms and conditions are effective as of 2020-04-08

Contact Us

If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at darshanaswath@gmail.com.""",
                  style: GoogleFonts.ubuntu(
                      fontSize: 17,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
