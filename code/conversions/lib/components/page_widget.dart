import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String title;
  final Widget child;

  PageWidget({this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}