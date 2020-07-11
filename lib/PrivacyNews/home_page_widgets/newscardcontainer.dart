import 'package:cached_network_image/cached_network_image.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_you/PrivacyNews/util/getnewsitem.dart';
import 'package:whats_you/PrivacyNews/datamodel/newsmodel.dart';
import 'package:whats_you/PrivacyNews/webpage/webviewpage.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCardContainer extends StatelessWidget {
  final String newsUrl;
  NewsCardContainer({this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FutureBuilder<List<NewsModel>>(
          future: getNewsItem(newsUrl),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                return ListView.builder(
                  key: ObjectKey(newsUrl),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return CardListView(
                      model: snapshot.data[index],
                    );
                  },
                );
              } else {
                return Center(
                  child: Text('No Data Available'),
                );
              }
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10),
                  Text("Loading",style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  final NewsModel model;
  CardListView({this.model});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => NewsWebViewPage(model)));
          },
          child: DelayedDisplay(
            child: Container(
              height: 250,
              color: Colors.grey[200],
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl: model.urlToImage,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.luminosity,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            model.title,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.ubuntu(
                              color: model.lightMutedColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
