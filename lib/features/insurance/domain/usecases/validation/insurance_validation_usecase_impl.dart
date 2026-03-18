import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/validation/insurance_validation_usecase.dart';

class InsuranceValidationUsecaseImpl implements InsuranceValidationUsecase {
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
  ValidationStatus bmiValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.notValid;
    } else {
      status = ValidationStatus.valid;
    }

    return status;
  }

  @override
  ValidationStatus childrenValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.notValid;
    } else {
      status = ValidationStatus.valid;
    }

    return status;
  }
}
