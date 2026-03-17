import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

abstract class ValidationFoodUsecase {
  ValidationStatus trueLabelValidation({required String? value});
}
