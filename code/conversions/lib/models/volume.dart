import 'measurement.dart';

class VolumeData {
  static List<Measurement> metric = [
    Measurement(name: 'cubic meter', unit: 'm\u00B3', baseUnit: 1000, type: Type.volume),
    Measurement(name: 'litre', unit: 'L', baseUnit: 1, type: Type.volume),
    Measurement(name: 'millilitre', unit: 'ml', baseUnit: 1/1000, type: Type.volume),
  ];

  static List<Measurement> imperial = [
    Measurement(name: 'cubic foot', unit: 'ft\u00B3', baseUnit: 28.317, type: Type.volume),
    Measurement(name: 'US dry gallon', unit: 'gal', baseUnit: 4.405, type: Type.volume),
    Measurement(name: 'liquid gallon', unit: 'gal', baseUnit: 3.785, type: Type.volume),
    Measurement(name: 'imperial quart', unit: 'qt', baseUnit: 1.137, type: Type.volume),
    Measurement(name: 'liquid quart', unit: 'qt', baseUnit: 1/1.057, type: Type.volume),
    Measurement(name: 'imperial pint', unit: 'pt', baseUnit: 1/1.76, type: Type.volume),
    Measurement(name: 'liquid pint', unit: 'pt', baseUnit: 1/2.113, type: Type.volume),
    Measurement(name: 'imperial cup', unit: 'cup', baseUnit: 1/3.52, type: Type.volume),
    Measurement(name: 'US legal cup', unit: 'cup', baseUnit: 1/4.167, type: Type.volume),
    Measurement(name: 'US fluid ounce', unit: 'fl oz', baseUnit: 1/33.814, type: Type.volume),
    Measurement(name: 'imperial tablespoon', unit: 'tbsp', baseUnit: 1/56.312, type: Type.volume),
    Measurement(name: 'cubic inch', unit: 'in\u00B3', baseUnit: 1/61.024, type: Type.volume),
    Measurement(name: 'US tablespoon', unit: 'tbsp', baseUnit: 1/67.628, type: Type.volume),
    Measurement(name: 'imperial teaspoon', unit: 'tsp', baseUnit: 1/169, type: Type.volume),
    Measurement(name: 'US teaspoon', unit: 'tsp', baseUnit: 1/203, type: Type.volume),
  ];
}