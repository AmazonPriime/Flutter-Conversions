import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:conversions/utilities.dart';

class UnitField extends StatefulWidget {
  final Function update;
  Measurement measurement;

  UnitField({this.measurement, this.update});

  @override
  _UnitFieldState createState() => _UnitFieldState();
}

class _UnitFieldState extends State<UnitField> {
  @override
  void initState() {
    super.initState();
    widget.measurement.controller = TextEditingController(text: widget.measurement.getValue.toStringAsFixed(2));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 30,
          child: Text(
            '${widget.measurement.unit}',
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
              )
            ),
            onEditingComplete: () {
              try {
                if (widget.measurement.controller.text.length == 0) {
                  setState(() {
                    widget.measurement.controller.value = widget.measurement.controller.value.copyWith(text: '0.00');
                  });
                }
                widget.update(widget.measurement, double.parse(widget.measurement.controller.text));
                widget.measurement.controller.value = widget.measurement.controller.value.copyWith(text: widget.measurement.getValue.toStringAsFixed(2));
              } catch (e) {
                print(e);
              }
              FocusScope.of(context).unfocus();
            },
            onChanged: (newValue) {
              try {
                double.parse(widget.measurement.controller.text);
                if (widget.measurement.controller.text[0] == '0' && widget.measurement.controller.text.length > 1) {
                  assert(widget.measurement.controller.text[1] == '.');
                }
              } catch (e) {
                widget.measurement.controller.value = widget.measurement.controller.value.copyWith(text: reformatDecimal(widget.measurement.controller.text));
              }
              widget.update(widget.measurement, double.parse(widget.measurement.controller.text));
            },
          ),
        ),
      ],
    );
  }
}
