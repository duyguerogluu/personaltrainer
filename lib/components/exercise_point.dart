/*
 *  This file is part of personaltrainer.
 *
 *  personaltrainer is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  personaltrainer is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *   along with personaltrainer.  If not, see <https://www.gnu.org/licenses/>.
 */

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
