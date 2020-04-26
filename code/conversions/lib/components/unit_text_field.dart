import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UnitField extends StatefulWidget {
  final String unit;
  final String placeholder;

  UnitField({this.unit, this.placeholder});

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

  String reformatDecimal(String input) {
    List<String> strDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    bool firstDecimalFound = false;
    String output;
    for (int i = 0; i < input.length; i++) {
      if (strDigits.contains(input[i])) {
        output += input[i];
      } else if (input[i] == '.' && !firstDecimalFound) {
        firstDecimalFound = true;
        output += input[i];
      }
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                prefix: Text('${widget.unit} '),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
              onEditingComplete: () {
                setState(() {
                  _controller.text = reformatDecimal(_controller.text);
                });
                FocusScope.of(context).unfocus();
              },
              onChanged: (newValue) {
                if (newValue.isEmpty) {
                  setState(() {
                    _controller.text = '0';
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}