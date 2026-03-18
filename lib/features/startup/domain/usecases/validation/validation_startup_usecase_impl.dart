import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/validation/validation_startup_usecase.dart';

class ValidationStartupUsecaseImpl implements ValidationStartupUsecase {
  @override
  ValidationStatus adminFormValidation({required String? value}) {
    ValidationStatus currentStatus = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      currentStatus = ValidationStatus.notValid;
    } else {
      currentStatus = ValidationStatus.valid;
    }

    return currentStatus;
  }

  @override
  ValidationStatus marketingFormValidation({required String? value}) {
    ValidationStatus currentStatus = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      currentStatus = ValidationStatus.notValid;
    } else {
      currentStatus = ValidationStatus.valid;
    }

    return currentStatus;
  }

  @override
  ValidationStatus rdFormValidation({required String? value}) {
    ValidationStatus currentStatus = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      currentStatus = ValidationStatus.notValid;
    } else {
      currentStatus = ValidationStatus.valid;
    }

    return currentStatus;
  }
}
