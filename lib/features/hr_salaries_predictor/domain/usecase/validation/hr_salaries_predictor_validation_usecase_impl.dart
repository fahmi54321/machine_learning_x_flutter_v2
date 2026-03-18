import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/validation/hr_salaries_predictor_validation_usecase.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

class HrSalariesPredictorValidationUsecaseImpl
    implements HrSalariesPredictorValidationUsecase {
  @override
  ValidationStatus levelValidation({required String? value}) {
    ValidationStatus status = ValidationStatus.initial;
    if (value == null || value.isEmpty) {
      status = ValidationStatus.notValid;
    } else {
      status = ValidationStatus.valid;
    }

    return status;
  }
}
