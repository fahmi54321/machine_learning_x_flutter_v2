import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

abstract class ValidationSalariesUsecase {
  ValidationStatus salariesValidation({required String? value});
}
