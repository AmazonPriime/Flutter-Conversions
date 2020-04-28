class ConversionMethods {
  static double meterToMeter({double value, bool reverse = false}) {
    return value;
  }

  static double kilometerToMeter({double value, bool reverse = false}) {
    return !reverse ? value * 1000 : value / 1000;
  }

  static double centimeterToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 100 : value * 100;
  }

  static double millimeterToMeter({double value, bool reverse = false}) {
    return !reverse ? value / 1000 : value * 1000;
  }

  static double mileToMeter({double value, bool reverse = false}) {
    return !reverse ? value * 1609.34 : value / 1609.34;
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