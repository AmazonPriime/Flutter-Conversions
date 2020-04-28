import 'package:conversions/models/length.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:conversions/utilities.dart';

class UnitField extends StatefulWidget {
  final LengthModel length;

  UnitField(this.length);

  @override
  _UnitFieldState createState() => _UnitFieldState();
}

class _UnitFieldState extends State<UnitField> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '0');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              isDense: true,
              prefix: Text('${widget.length.unit} '),
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
            ),
            onEditingComplete: () {
              if (_controller.text.length == 0) {
                setState(() {
                  _controller.text = '0';
                });
              }
              FocusScope.of(context).unfocus();
            },
            onChanged: (newValue) {
              if (newValue.isEmpty) {
                setState(() {
                  _controller.text = '0';
                });
              } else {
                try {
                  double.parse(_controller.text);
                  if (_controller.text[0] == '0' && _controller.text.length > 1) {
                    assert(_controller.text[1] == '.');
                  }
                } catch (e) {
                  _controller.text = reformatDecimal(_controller.text);
                }
              }
            },
          ),
        ),
      ],
    );
  }
}
