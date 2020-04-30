import 'package:conversions/components/measurement_list.dart';
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  static final String title = 'Volume';

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  @override
  Widget build(BuildContext context) {
    return MeasurementList(Type.volume);
  }
}

