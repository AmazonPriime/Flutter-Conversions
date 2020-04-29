import 'package:conversions/components/measurement_list.dart';
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  static final String title = 'Weight';

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return MeasurementList(Type.weight);
  }
}
