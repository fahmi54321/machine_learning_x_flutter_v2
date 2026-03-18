import 'dart:io';
import 'dart:typed_data';

import 'package:fl_chart/src/chart/base/axis_chart/axis_chart_data.dart';

import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';

abstract class ConverterUsecase {
  double stringToDouble({required String value});

  int stringToInt({required String value});

  Uint8List? base64ToUint8List({required String val});

  File? filePathToFile({required String path});

  String doubleToFomatUSD({required double value});

  List<FlSpot> listHrPointToListFlSpot({required List<HrPointEntity> list});
}
