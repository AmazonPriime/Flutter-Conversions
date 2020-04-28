import 'package:flutter/cupertino.dart';

class Measurement {
  final String name;
  final String unit;
  final System system; // metric or imperial
  final Type type;
  final Function convertFunction;

  double _value = 0;
  TextEditingController controller;

  Measurement({this.name, this.unit, this.system, this.type, this.convertFunction});

  // setter and getter for value
  double get getValue => this._value;

  void setValue(double value) {
    this._value = value;
    this.controller.text = value.toString();
  }
}

enum System {
  metric,
  imperial
}

enum Type {
  length,
  weight
}