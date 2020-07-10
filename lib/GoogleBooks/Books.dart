import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';

class BooksApi extends StatefulWidget {
  @override
  _BooksApiState createState() => _BooksApiState();
}

class _BooksApiState extends State<BooksApi> {
  Map books;
  List booksData;
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFec2F4B), Color(0xFF009FFF)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 70.0));

  Future _getData() async {
    http.Response response =
        await http.get('https://www.googleapis.com/books/v1/volumes?q=cyber');
    books = json.decode(response.body);
    setState(() {
      booksData = books['items'];
    });
    print(booksData.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF121212),
        appBar: AppBar(
          backgroundColor: Color(0xFF121212),
          title: Text(
            "Reference Materials",
            style: GoogleFonts.ubuntu(
                foreground: Paint()..shader = linearGradient,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(bottom: 19, top: 10),
          itemCount: booksData == null ? 0 : booksData.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () =>
                  launch(booksData[index]['volumeInfo']['previewLink']),
              child: Card(
                color: Color(0xFF121212),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(bottom: 19),
                  height: 110,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: booksData[index]['volumeInfo']['imageLinks']
                                        ['thumbnail'] ==
                                    null
                                ? CachedNetworkImage(
                                    imageUrl:
                                        "https://www.writersdigest.com/.image/t_share/MTcxMDY0NzcxMzIzNTY5NDEz/image-placeholder-title.jpg",
                                  )
                                : DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        booksData[index]['volumeInfo']
                                            ['imageLinks']['thumbnail']),
                                  )),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 260,
                            child: booksData[index]['volumeInfo']['title'] == null
                                ? Text('Untitled')
                                : Text(
                                    booksData[index]['volumeInfo']['title'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
//                      booksData[index]['volumeInfo']['subtitle'] == null
//                          ? Container()
//                          : SizedBox(
//                              width: 350,
//                              child: Text(
//                                booksData[index]['volumeInfo']['subtitle'],
//                                maxLines: 5,
//                                overflow: TextOverflow.ellipsis,
//                                style: GoogleFonts.ubuntu(color: Colors.white),
//                              )),
                          Text(
                            "${booksData[index]['volumeInfo']['authors']}",
                            style: GoogleFonts.ubuntu(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellowAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              booksData[index]['volumeInfo']['averageRating'] ==
                                      null
                                  ? Text(
                                      'Not Yet Rated',
                                      style:
                                          GoogleFonts.ubuntu(color: Colors.white),
                                    )
                                  : Text(
                                      booksData[index]['volumeInfo']
                                              ['averageRating']
                                          .toString(),
                                      style:
                                          GoogleFonts.ubuntu(color: Colors.white),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
