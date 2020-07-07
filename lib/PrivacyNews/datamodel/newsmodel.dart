
import 'package:flutter/material.dart';


class NewsModel{

  String websiteName;
  String title;
  String headLine;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Color darkVibrantColor;
  Color lightMutedColor;


  NewsModel({this.websiteName,this.title,this.headLine,this.url,this.urlToImage,this.publishedAt,this.content,this.darkVibrantColor,this.lightMutedColor});
}