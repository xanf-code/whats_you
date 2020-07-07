import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:whats_you/PrivacyNews/datamodel/newsmodel.dart';


Future<List<NewsModel>> getNewsItem(String newsUrl) async {
//    return newsItemSample;

  final List<NewsModel> newsModel = [];
  String defaultImage =
      'https://nbhc.ca/sites/default/files/styles/article/public/default_images/news-default-image%402x_0.png?itok=d03WAFvJ';

  http.Response response = await http.get(newsUrl);

  if (response.statusCode == 200) {
    String data = response.body;


    for (int i = 0; i < 20; i++) {
      String websiteName =
          jsonDecode(data)['articles'][i]['source']['name'].toString();
      String title = jsonDecode(data)['articles'][i]['title'].toString();
      String headLine =
          jsonDecode(data)['articles'][i]['description'].toString();
      String url = jsonDecode(data)['articles'][i]['url'].toString();
      String urlToImage =
          jsonDecode(data)['articles'][i]['urlToImage'].toString();
      String publishedAt =
          jsonDecode(data)['articles'][i]['publishedAt'].toString();
      String content = jsonDecode(data)['articles'][i]['content'].toString();

//      print("utlimage: $i:  $urlToImage");

      newsModel.add(
          NewsModel(
        websiteName: websiteName,
        title: title,
        headLine: headLine,
        url: url,
        urlToImage: urlToImage.length > 50 ? urlToImage : defaultImage,
        publishedAt: publishedAt,
        content: content,
        darkVibrantColor: Colors.black,
        lightMutedColor: Colors.white,
      ));
    }
  }

  return newsModel;
}
