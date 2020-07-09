import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:whats_you/constants/changes.dart';

class Modal {
  changeBottomSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Markdown(
              data: Changes,
            ),
          );
        });
  }
}
