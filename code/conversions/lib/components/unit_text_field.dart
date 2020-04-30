import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:conversions/utilities.dart';

class UnitField extends StatefulWidget {
  final Function update;
  final Measurement measurement;

  UnitField({this.measurement, this.update});

  @override
  _UnitFieldState createState() => _UnitFieldState();
}

class _UnitFieldState extends State<UnitField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 30,
          child: Text(
            widget.measurement.unit,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            controller: widget.measurement.controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              isDense: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              suffix: Text(widget.measurement.name)
            ),
            onEditingComplete: () {
              // if the text field is empty reset the field to the default value
              if (widget.measurement.controller.text.length == 0) {
                setState(() {
                  widget.measurement.controller.value = widget.measurement.controller.value.copyWith(text: '0.00');
                });
              }
              FocusScope.of(context).unfocus();
            },
            onChanged: (newValue) {
              widget.measurement.controller.value = widget.measurement.controller.value.copyWith(text: reformatDecimal(widget.measurement.controller.text));
              widget.update(widget.measurement, double.parse(widget.measurement.controller.text));
            },
          ),
        ),
      ],
    );
  }
}
