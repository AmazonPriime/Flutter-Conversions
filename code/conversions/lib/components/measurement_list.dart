import 'package:conversions/components/unit_text_field.dart';
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:conversions/models/data.dart';

class MeasurementList extends StatefulWidget {
  final Type type;

  MeasurementList(this.type);

  @override
  _MeasurementListState createState() => _MeasurementListState();
}

class _MeasurementListState extends State<MeasurementList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBank>(
      builder: (context, dataBank, child) {
        Map<System, List<Measurement>> measurements = dataBank.measurements[widget.type];
        List<Widget> result = [];
        for (System system in System.values) {
          if (measurements.containsKey(system)) {
            result.add(SizedBox(height: 15));
            result.add(
              Text(
                system.toString().split('.').last.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            );
            result.add(Divider());
            for (Measurement measurement in measurements[system]) {
              result.add(UnitField(measurement: measurement, update: dataBank.updateValue));
            }
          }
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: result,
        );
      }
    );
  }
}
