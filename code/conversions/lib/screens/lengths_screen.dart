import 'package:conversions/components/measurement_list.dart';
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  static final String title = 'Length';

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return MeasurementList(Type.length);
  }
}

