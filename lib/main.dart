import 'package:flutter/material.dart';
import 'package:flutter_application_1/location_detail.dart';
import 'package:flutter_application_1/mocks/mock_location.dart';
import 'package:flutter_application_1/models/location.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();
  return runApp(MaterialApp(home: LocationDetail(mockLocation)));
}
