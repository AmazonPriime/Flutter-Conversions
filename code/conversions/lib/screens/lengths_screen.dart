import 'package:conversions/components/unit_text_field.dart';
import 'package:conversions/models/length.dart';
import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  static final String title = 'Length';

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 10),
        UnitField(LengthModel(name: 'centimeters', unit: 'cm', type: 'metric', convertFunction: ConversionMethods.centimeterToMeter)),
        Divider()
      ],
    );
  }
}

