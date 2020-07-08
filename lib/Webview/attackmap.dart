import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: InAppWebViewExampleScreen(),
    );
  }
}

class InAppWebViewExampleScreen extends StatefulWidget {
  @override
  _InAppWebViewExampleScreenState createState() =>
      new _InAppWebViewExampleScreenState();
}

class _InAppWebViewExampleScreenState extends State<InAppWebViewExampleScreen> {
  InAppWebViewController webView;
  ContextMenu contextMenu;
  String url = "";
  double progress = 0;

  @override
  void initState() {
    super.initState();

    contextMenu = ContextMenu(
        menuItems: [
          ContextMenuItem(
              androidId: 1,
              iosId: "1",
              title: "Special",
              action: () async {
                print("Menu item Special clicked!");
                print(await webView.getSelectedText());
                await webView.clearFocus();
              })
        ],
        options: ContextMenuOptions(hideDefaultSystemContextMenuItems: true),
        onCreateContextMenu: (hitTestResult) async {
          print("onCreateContextMenu");
          print(hitTestResult.extra);
          print(await webView.getSelectedText());
        },
        onHideContextMenu: () {
          print("onHideContextMenu");
        },
        onContextMenuActionItemClicked: (contextMenuItemClicked) async {
          var id = (Platform.isAndroid)
              ? contextMenuItemClicked.androidId
              : contextMenuItemClicked.iosId;
          print("onContextMenuActionItemClicked: " +
              id.toString() +
              " " +
              contextMenuItemClicked.title);
        });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Real Time Cyberthreat Stats",
            style: GoogleFonts.ubuntu(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color(0xFF121212),
        ),
        backgroundColor: Color(0xFF121212),
        child: SafeArea(
            child: Column(children: <Widget>[
          Expanded(
            child: InAppWebView(
                contextMenu: contextMenu,
                initialUrl: "https://cybermap.kaspersky.com/stats/",
                initialHeaders: {},
                initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(
                    debuggingEnabled: false,
                    useShouldOverrideUrlLoading: true,
                    javaScriptEnabled: true,
                  ),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  webView = controller;
                  print("onWebViewCreated");
                },
                onLoadStart: (InAppWebViewController controller, String url) {
                  print("onLoadStart $url");
                  setState(() {
                    this.url = url;
                  });
                },
                shouldOverrideUrlLoading:
                    (controller, shouldOverrideUrlLoadingRequest) async {
                  var url = shouldOverrideUrlLoadingRequest.url;
                  var uri = Uri.parse(url);

                  if (![
                    "http",
                    "https",
                    "file",
                    "chrome",
                    "data",
                    "javascript",
                    "about"
                  ].contains(uri.scheme)) {
                    if (await canLaunch(url)) {
                      // Launch the App
                      await launch(
                        url,
                      );
                      // and cancel the request
                      return ShouldOverrideUrlLoadingAction.CANCEL;
                    }
                  }

                  return ShouldOverrideUrlLoadingAction.ALLOW;
                },
                onLoadStop:
                    (InAppWebViewController controller, String url) async {
                  print("onLoadStop $url");
                  setState(() {
                    this.url = url;
                  });
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
                onUpdateVisitedHistory: (InAppWebViewController controller,
                    String url, bool androidIsReload) {
                  print("onUpdateVisitedHistory $url");
                  setState(() {
                    this.url = url;
                  });
                }),
          ),
        ])));
  }
}
