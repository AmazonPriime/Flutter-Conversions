import 'package:conversions/screens/lengths_screen.dart';

import 'measurement.dart';

class LengthData {
  static List<Measurement> metric = [
    Measurement(name: 'kilometer', unit: 'km', baseUnit: 1000, type: Type.length),
    Measurement(name: 'meter', unit: 'm', baseUnit: 1, type: Type.length),
    Measurement(name: 'centimeter', unit: 'cm', baseUnit: 1/100, type: Type.length),
    Measurement(name: 'millimeter', unit: 'mm', baseUnit: 1/1000, type: Type.length),
  ];

  static List<Measurement> imperial = [
    Measurement(name: 'mile', unit: 'mi', baseUnit: 1609.34, type: Type.length),
    Measurement(name: 'yard', unit: 'yd', baseUnit: 1/1.094, type: Type.length),
    Measurement(name: 'foot', unit: 'ft', baseUnit: 1/3.281, type: Type.length),
    Measurement(name: 'inch', unit: 'in', baseUnit: 1/39.37, type: Type.length),
  ];
}