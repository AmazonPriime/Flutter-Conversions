class ConversionMethods {
  static double gramToGram({double value, bool reverse = false}) {
    return value;
  }

  static double kilogramToGram({double value, bool reverse = false}) {
    return !reverse ? value * 1000 : value / 1000;
  }

  static double milligramToGram({double value, bool reverse = false}) {
    return !reverse ? value / 1000 : value * 1000;
  }

  static double tonToGram({double value, bool reverse = false}) {
    return !reverse ? value * 1e6 : value / 1e6;
  }

  static double imperialTonToGram({double value, bool reverse = false}) {
    return !reverse ? value * 1.016e6 : value / 1.016e6;
  }

  static double USTonToGram({double value, bool reverse = false}) {
    return !reverse ? value * 907185 : value / 907185;
  }

  static double stoneToGram({double value, bool reverse = false}) {
    return !reverse ? value * 6350 : value / 6350;
  }

  static double poundToGram({double value, bool reverse = false}) {
    return !reverse ? value * 454 : value / 454;
  }

  static double ounceToGram({double value, bool reverse = false}) {
    return !reverse ? value * 28.35 : value / 28.35;
  }
}