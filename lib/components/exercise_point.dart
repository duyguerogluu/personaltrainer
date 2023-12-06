import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ExercisePoint {
  final double x;
  final double y;
  ExercisePoint({required this.x, required this.y});
}

List<ExercisePoint> get exercisePoints {
  final data = <double>[20, 44, 60, 120, 92, 10];
  return data
      .mapIndexed(
          ((index, element) => ExercisePoint(x: index.toDouble(), y: element)
          ))
      .toList();
}
