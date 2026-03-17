import 'package:machine_learning_x_flutter/features/food_vision/data/models/food_model.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/entities/food_entity.dart';

extension FoodModelMapper on FoodModel {
  FoodEntity toEntity() {
    return FoodEntity(
      confidence: confidence,
      description: description,
      prediction: prediction,
      trueLabel: trueLabel,
      imageBase64: imageBase64,
    );
  }
}
