
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_you/APIKeys/constants.dart';

//TextStyle
const mainHeadingStyle=TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Exo2');
const notificationText = TextStyle(fontSize: 10, color: Colors.white);


const newsApiKey= NewsApi;

String getNewsUrl(String category){
  return 'https://newsapi.org/v2/everything?q=data&apiKey=$NewsApi';
}