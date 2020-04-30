// model which brings together the length and weight models all into one
// for the provider to use
import 'package:conversions/models/measurement.dart';
import 'package:flutter/material.dart';
import 'length.dart';
import 'weight.dart';
import 'volume.dart';

class DataBank extends ChangeNotifier {

  Map<Type, Map<System, List<Measurement>>> measurements = {
    Type.length : {
      System.metric : LengthData.metric,
      System.imperial : LengthData.imperial
    },
    Type.weight : {
      System.metric : WeightData.metric,
      System.imperial : WeightData.imperial
    },
    Type.volume : {
      System.metric : VolumeData.metric,
      System.imperial : VolumeData.imperial
    }
  };

  // updates the values for all the measurements
  void updateValue(Measurement measurement, double value) {
    measurement.setValue(value, isSelf: true);
    updateOtherValues(measurement);
    notifyListeners();
  }
  
  // takes the measurement which was updated as a reference on how to update the other values
  void updateOtherValues(Measurement refMeasurement) {
    Map<System, List<Measurement>> measurementMap = this.measurements[refMeasurement.type];
    // gets the reference meters value which each will be converted around
    double refValue = refMeasurement.convertToBase(input: refMeasurement.getValue);
    for (System system in System.values) {
      if (measurementMap.containsKey(system)) {
        for (Measurement measurement in measurementMap[system]) {
          measurement.setValue(measurement.convertToBase(input: refValue, reverse: true), isSelf: refMeasurement == measurement ? true : false);
        }
      }
    }
  }
}