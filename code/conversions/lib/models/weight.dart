import 'measurement.dart';

class WeightData {
  static List<Measurement> metric = [
    Measurement(name: 'ton', unit: 't', baseUnit: 1e6, type: Type.weight),
    Measurement(name: 'kilogram', unit: 'kg', baseUnit: 1000, type: Type.weight),
    Measurement(name: 'gram', unit: 'g', baseUnit: 1, type: Type.weight),
    Measurement(name: 'milligram', unit: 'mg', baseUnit: 1/1000, type: Type.weight),
  ];

  static List<Measurement> imperial = [
    Measurement(name: 'imperial ton', unit: 'iT', baseUnit: 1.016e6, type: Type.weight),
    Measurement(name: 'US ton', unit: 'T', baseUnit: 907185, type: Type.weight),
    Measurement(name: 'stone', unit: 'st', baseUnit: 6350, type: Type.weight),
    Measurement(name: 'pound', unit: 'lb', baseUnit: 454, type: Type.weight),
    Measurement(name: 'ounce', unit: 'oz', baseUnit: 28.35, type: Type.weight),
  ];
}