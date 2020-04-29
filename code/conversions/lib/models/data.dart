// model which brings together the length and weight models all into one
// for the provider to use
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'length.dart' as length;
import 'weight.dart' as weight;

class DataBank extends ChangeNotifier {
  Map<Type, Map<System, List<Measurement>>> measurements = {
    Type.length : {
      System.metric : [
        Measurement(name: 'kilometer', unit: 'km', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.kilometerToMeter),
        Measurement(name: 'meter', unit: 'm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.meterToMeter),
        Measurement(name: 'centimeter', unit: 'cm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.centimeterToMeter),
        Measurement(name: 'millimeter', unit: 'mm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.millimeterToMeter),
      ],
      System.imperial : [
        Measurement(name: 'mile', unit: 'mi', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.mileToMeter),
        Measurement(name: 'yard', unit: 'yd', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.yardToMeter),
        Measurement(name: 'foot', unit: 'ft', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.footToMeter),
        Measurement(name: 'inche', unit: 'in', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.inchToMeter),
      ]
    },
    Type.weight : {
      System.metric : [
        Measurement(name: 'kilogram', unit: 'kg', system: System.metric, type: Type.weight, convertFunction: weight.ConversionMethods.kilogramToGram),
        Measurement(name: 'gram', unit: 'g', system: System.metric, type: Type.weight, convertFunction: weight.ConversionMethods.gramToGram),
        Measurement(name: 'milligram', unit: 'mg', system: System.metric, type: Type.weight, convertFunction: weight.ConversionMethods.milligramToGram),
        Measurement(name: 'ton', unit: 't', system: System.metric, type: Type.weight, convertFunction: weight.ConversionMethods.tonToGram),
      ],
      System.imperial : [
        Measurement(name: 'US ton', unit: 'T', system: System.imperial, type: Type.weight, convertFunction: weight.ConversionMethods.USTonToGram),
        Measurement(name: 'imperial ton', unit: 'iT', system: System.imperial, type: Type.weight, convertFunction: weight.ConversionMethods.imperialTonToGram),
        Measurement(name: 'stone', unit: 'st', system: System.imperial, type: Type.weight, convertFunction: weight.ConversionMethods.stoneToGram),
        Measurement(name: 'pound', unit: 'lbs', system: System.imperial, type: Type.weight, convertFunction: weight.ConversionMethods.poundToGram),
        Measurement(name: 'ounce', unit: 'oz', system: System.imperial, type: Type.weight, convertFunction: weight.ConversionMethods.ounceToGram),
      ]
    }
  };

  void updateValue(Measurement measurement, double value) {
    measurement.setValue(value, isSelf: true);
    updateOtherValues(measurement);
    notifyListeners();
  }
  
  // takes the measurement which was updated as a reference on how to update the other values
  void updateOtherValues(Measurement refMeasurement) {
    Map<System, List<Measurement>> measurementMap = this.measurements[refMeasurement.type];
    // gets the reference meters value which each will be converted around
    double refValue = refMeasurement.convertFunction(value: refMeasurement.getValue);
    for (System system in System.values) {
      if (measurementMap.containsKey(system)) {
        for (Measurement measurement in measurementMap[system]) {
          measurement.setValue(measurement.convertFunction(value: refValue, reverse: true), isSelf: refMeasurement == measurement ? true : false);
        }
      }
    }
  }
}