import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/validation/validation_food_usecase.dart';

class ValidationFoodUsecaseImpl implements ValidationFoodUsecase {
  @override
  ValidationStatus trueLabelValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.error;
    } else {
      status = ValidationStatus.success;
    }

    return status;
  }
}
