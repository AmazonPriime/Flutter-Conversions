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
        SizedBox(height: 15),
        Text(
          'The 2 Systems',
          style: kHeadingTextStyle,
        ),
        Divider(),
        Text(
          'The two main systems of measurement in use today are the Metric system and the Imperial system. '
          'Most countries use the metric system, some countries use a mixture of the two such as the United Kingdom. '
          'The United States is the most well known country which still uses the Imperial system.',
          style: kBlockTextStyle,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 15),
        Text(
          'The Metric System',
          style: kHeadingTextStyle,
        ),
        Divider(),
        Text(
          'Some info on the Metric system to go here.',
          style: kBlockTextStyle,
        ),
        SizedBox(height: 15),
        Text(
          'The Imperial System',
          style: kHeadingTextStyle,
        ),
        Divider(),
        Text(
          'Some info on the Imperial system to go here.',
          style: kBlockTextStyle,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
