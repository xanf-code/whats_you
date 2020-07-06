
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TextStyle
const mainHeadingStyle=TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Exo2');
const notificationText = TextStyle(fontSize: 10, color: Colors.white);


const newsApiKey= '3b92135a4c7243fc9ac7eef1f390831c';

String getNewsUrl(String category){
  return 'https://newsapi.org/v2/everything?q=data&apiKey=$newsApiKey';
}