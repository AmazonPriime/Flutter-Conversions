import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String title;
  final Widget child;

  PageWidget({this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(child: child)
    );
  }
}