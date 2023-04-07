import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class ActualLocation {
  Future<dynamic> getActualLocation(context) async {
    // print('am here in location');
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    // print('step 1');
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      // print('step 2');
      if (permission == LocationPermission.deniedForever) {
        return "not allowed for good";
      }
      return "not allowed";
    } else {
      Position obtained_position;
      try {
        obtained_position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        return obtained_position;
      } catch (e) {
        return 'not allowed';
      }
    }
  }
}
