import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

abstract class CustomerPredictionValidationUsecase {
  ValidationStatus ageValidation({required String? value});
  ValidationStatus estimatedSalaryValidation({required String? value});
}
