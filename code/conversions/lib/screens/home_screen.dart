import 'package:conversions/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static final String title = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          'Conversions',
          style: kHeadingTextStyle,
        ),
        Divider(),
        Text(
          'This app is very simple, it allows you to convert between differnet units of measurement. '
          'Like for instance, converting between meters and feet, or grams and lbs etc.',
          style: kBlockTextStyle,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 15),
        Text(
          'This app was developed to help everyday people with converting between different units as '
          'people often prefer to use either metric or imperial and are not able to convert between the two systems.',
          style: kBlockTextStyle,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
