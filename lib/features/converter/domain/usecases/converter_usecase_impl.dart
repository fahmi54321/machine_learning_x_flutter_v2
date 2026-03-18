import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:fl_chart/src/chart/base/axis_chart/axis_chart_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';

class ConverterUsecaseImpl implements ConverterUsecase {
  @override
  double stringToDouble({required String value}) {
    try {
      if (value.isNotEmpty) {
        final data = double.parse(value);
        return data;
      } else {
        return 0;
      }
    } catch (e) {
      debugPrint('Error converting string to double: $e');
      return 0;
    }
  }

  @override
  int stringToInt({required String value}) {
    try {
      if (value.isNotEmpty) {
        final data = int.parse(value);
        return data;
      } else {
        return 0;
      }
    } catch (e) {
      debugPrint('Error converting string to int: $e');
      return 0;
    }
  }

  @override
  Uint8List? base64ToUint8List({required String val}) {
    try {
      if (val.isNotEmpty) {
        final data = base64Decode(val);
        return data;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Error converting base64 to Uint8List: $e');
      return null;
    }
  }

  @override
  File? filePathToFile({required String path}) {
    if (path.isNotEmpty) {
      try {
        return File(path);
      } catch (e) {
        debugPrint('Error converting file path to File: $e');
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  String doubleToFomatUSD({required double value}) {
    try {
      return "\$${value.toStringAsFixed(0).replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}";
    } catch (e) {
      return '0';
    }
  }

  @override
  List<FlSpot> listHrPointToListFlSpot({required List<HrPointEntity> list}) {
    if (list.isNotEmpty) {
      try {
        return list.map((item) => FlSpot(item.x, item.y)).toList();
      } catch (e) {
        return [];
      }
    } else {
      return [];
    }
  }
}
