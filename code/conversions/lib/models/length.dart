class LengthModel {
  final String name;
  final String unit;
  final String type; // metric or imperial
  final Function convertFunction;

  double value = 0;

  LengthModel({this.name, this.unit, this.type, this.convertFunction});
}

class ConversionMethods {
  static double kilometerToMeter({double value, bool reverse = false}) {
    return !reverse ? value * 1000 : value / 1000;
  }

  static double centimeterToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 100 : value * 100;
  }

  static double millimeterToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 1000 : value * 1000;
  }

  static double microMeter({double value, bool reverse = false}) {
    return !reverse ? value / 1e+6 : value * 1e+6;
  }

  static double nanometerToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 1e+9 : value * 1e+9;
  }

  static double mileToMeter({double value, bool reverse = false}) {
    return !reverse ? value * 1609.34 : value * 1609.34;
  }

  static double yardToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 1.094 : value * 1.094;
  }

  static double footToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 3.281 : value * 3.281;
  }

  static double inchToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 39.37 : value * 39.37;
  }
}