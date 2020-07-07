
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TextStyle
const mainHeadingStyle=TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'Exo2');
const notificationText = TextStyle(fontSize: 10, color: Colors.white);



const userImage ='https://content-static.upwork.com/uploads/2014/10/01073429/profilephoto2.jpg';
const newsApiKey= '3967de67cdf44876bd374b9c83e08f55';

String getNewsUrl(String category){
  return 'https://newsapi.org/v2/top-headlines?country=ca&category=$category&apiKey=$newsApiKey';
}