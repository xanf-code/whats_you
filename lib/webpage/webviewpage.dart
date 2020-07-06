import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_you/NewsPage/NewsPageHome.dart';
import 'package:whats_you/datamodel/newsmodel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebViewPage extends StatefulWidget {
  final NewsModel newsModel;
  NewsWebViewPage(this.newsModel);
  @override
  _NewsWebViewPageState createState() => _NewsWebViewPageState();
}

class _NewsWebViewPageState extends State<NewsWebViewPage> {
  bool _isLoadingPage;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _key = UniqueKey();
  var box;

  @override
  void initState() {
    super.initState();
    _isLoadingPage = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.black,
        icon: Icon(CupertinoIcons.back),
        label: Text("Back to NewsPage"),
      ),
      backgroundColor: Color(0xFF121212),
      key: _scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "News Detail Page",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                    ),
                    Spacer(),
                    _isLoadingPage
                        ? Container(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              strokeWidth: 1.0,
                            ),
                          )
                        : Container(
                            height: 10,
                            width: 10,
                          ),
                  ],
                ),
                Expanded(
                  child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: widget.newsModel.url,
                    onPageFinished: (finish) {
                      setState(() {
                        _isLoadingPage = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
