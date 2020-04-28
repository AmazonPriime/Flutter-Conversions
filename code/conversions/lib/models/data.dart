// model which brings together the length and weight models all into one
// for the provider to use
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'length.dart' as length;

class DataBank extends ChangeNotifier {
  Map<Type, Map<System, List<Measurement>>> measurements = {
    Type.length : {
      System.metric : [
        Measurement(name: 'meter', unit: 'm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.meterToMeter),
        Measurement(name: 'kilometer', unit: 'km', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.kilometerToMeter),
        Measurement(name: 'centimeter', unit: 'cm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.centimeterToMeter),
        Measurement(name: 'millimeter', unit: 'mm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.millimeterToMeter),
        Measurement(name: 'micrometer', unit: 'μm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.microMeter),
        Measurement(name: 'nanometer', unit: 'nm', system: System.metric, type: Type.length, convertFunction: length.ConversionMethods.nanometerToMeter),
      ],
      System.imperial : [
        Measurement(name: 'mile', unit: 'mi', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.mileToMeter),
        Measurement(name: 'yard', unit: 'yd', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.yardToMeter),
        Measurement(name: 'foot', unit: 'ft', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.footToMeter),
        Measurement(name: 'inche', unit: 'in', system: System.imperial, type: Type.length, convertFunction: length.ConversionMethods.inchToMeter),
      ]
    },
    Type.weight : {
      // TODO: implement weights
    }
  };

  void updateValue(Measurement measurement, double value) {
    measurement.setValue(value);
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
          measurement.setValue(measurement.convertFunction(value: refValue, reverse: true));
        }
      }
    }
  }
}