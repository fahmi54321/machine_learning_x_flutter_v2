import 'package:machine_learning_x_flutter/features/startup/data/models/startup_model.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/entities/startup_entity.dart';

extension StartupModelMapper on StartupModel {
  StartupEntity toEntity() {
    return StartupEntity(
      classification: classification,
      description: description,
      predictedProfit: predictedProfit,
      recommendation: recommendation,
    );
  }
}
