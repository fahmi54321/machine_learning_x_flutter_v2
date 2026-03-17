import 'package:machine_learning_x_flutter/features/insurance/data/models/insurance_model.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/entities/insurance_entity.dart';

extension InsuranceModelMapper on InsuranceModel {
  InsuranceEntity toEntity() {
    return InsuranceEntity(
      description: description,
      predictedCharges: predictedCharges,
      riskCategory: riskCategory,
    );
  }
}
