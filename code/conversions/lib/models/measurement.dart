import 'package:flutter/cupertino.dart';

class Measurement {
  final String name;
  final String unit;
  final double baseUnit; // length: meters, weight: grams, volume: litres
  final Type type;

  double _value = 0;
  TextEditingController controller;

  Measurement({this.name, this.unit, this.baseUnit, this.type}) {
   this.controller = TextEditingController(text: this._value.toStringAsFixed(2));
  }

  // getter method to get the value of the measurement
  double get getValue => this._value;

  // converts the unit to it's base unit and vice versa if reverse is true
  double convertToBase({double input, bool reverse = false}) {
    return !reverse ? input * this.baseUnit : input / this.baseUnit;
  }

  // updates the value of the measurement and if it's updating itself it'll not update the text as user is updating it
  void setValue(double value, {bool isSelf = false}) {
    this._value = value;
    if (!isSelf) {
      this.controller.value = this.controller.value.copyWith(text: value.toStringAsFixed(2));
    }
  }
}

// the different types of unit systems used in the app
enum System {
  metric,
  imperial
}

// the different categories/types of units used in the app
enum Type {
  length,
  weight,
  volume
}

