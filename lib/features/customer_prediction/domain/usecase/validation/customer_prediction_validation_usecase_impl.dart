import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/validation/customer_prediction_validation_usecase.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

class CustomerPredictionValidationUsecaseImpl
    implements CustomerPredictionValidationUsecase {
  @override
  ValidationStatus ageValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.notValid;
    } else {
      status = ValidationStatus.valid;
    }

    return status;
  }

  @override
  ValidationStatus estimatedSalaryValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.notValid;
    } else {
      status = ValidationStatus.valid;
    }

    return status;
  }
}
