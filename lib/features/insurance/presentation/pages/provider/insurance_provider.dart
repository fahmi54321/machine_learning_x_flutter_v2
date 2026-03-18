import 'package:machine_learning_x_flutter/features/insurance/domain/entities/params/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/core/app/app_state.dart';
import 'package:machine_learning_x_flutter/shared/base/provider/base_state_provider.dart';
import 'package:machine_learning_x_flutter/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/insurance/presentation/pages/provider/insurance_state.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/insurance_usecase.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/validation/insurance_validation_usecase.dart';

class InsuranceProvider extends BaseStateProvider<InsuranceState> {
  final InsuranceValidationUsecase insuranceValidationUsecase;
  final InsuranceUsecase insuranceUsecase;
  final ConverterUsecase converterUsecase;
  final AppState appState;
  InsuranceProvider({
    required this.insuranceValidationUsecase,
    required this.insuranceUsecase,
    required this.converterUsecase,
    required this.appState,
  }) {
    initState(InsuranceState.initial());
  }

  void updateAge(String value) {
    final status = insuranceValidationUsecase.ageValidation(value: value);

    updateState(
      (s) => s.copyWith(
        age: FormValue(value: value, validationStatus: status),
      ),
    );
  }

  void updateBmi(String value) {
    final status = insuranceValidationUsecase.bmiValidation(value: value);

    updateState(
      (s) => s.copyWith(
        bmi: FormValue(value: value, validationStatus: status),
      ),
    );
    notifyListeners();
  }

  void updateChildren(String value) {
    final status = insuranceValidationUsecase.childrenValidation(value: value);

    updateState(
      (s) => s.copyWith(
        children: FormValue(value: value, validationStatus: status),
      ),
    );
    notifyListeners();
  }

  bool get isValid {
    if (state.age.validationStatus != ValidationStatus.valid) {
      _handleAlert('Age tidak boleh kosong');
      return false;
    } else if (state.bmi.validationStatus != ValidationStatus.valid) {
      _handleAlert('bmi tidak boleh kosong');
      return false;
    } else if (state.children.validationStatus != ValidationStatus.valid) {
      _handleAlert('children tidak boleh kosong');
      return false;
    } else {
      return true;
    }
  }

  Future<void> predict() async {
    if (!isValid) {
      return;
    }

    await safeEitherRequest(
      key: InsuranceStateAction.predict.name,
      onStart: () {
        updateState((s) => s.copyWith(status: InsuranceStatus.loading));
        _handleLoader(true);
      },
      onComplete: () {
        _handleLoader(false);
      },
      request: (token) => insuranceUsecase.predictInsurance(
        params: InsuranceParamsEntity(
          age: converterUsecase.stringToInt(value: state.age.value),
          sex: state.selectedSex,
          bmi: state.bmi.value,
          children: converterUsecase.stringToInt(value: state.children.value),
          smoker: state.selectedSmoker,
          region: state.selectedRegion,
        ),
        cancelToken: token,
      ),
      onSuccess: (insurance) {
        updateState(
          (s) => s.copyWith(
            status: InsuranceStatus.success,
            insuranceEntity: insurance,
          ),
        );
        _handleLoader(false);
      },
      onFailure: (failure) {
        updateState((s) => s.copyWith(status: InsuranceStatus.error));
        _handleLoader(false);

        if (failure is TimeoutFailure) {
          _handleTimeout(failure.message);
        } else {
          _handleFailure(failure.message);
        }
      },
    );
  }

  void updateSelectedSex(String? v) {
    updateState((s) => s.copyWith(selectedSex: v));
  }

  void updateSelectedSmoker(String? v) {
    updateState((s) => s.copyWith(selectedSmoker: v));
  }

  void updateSelectedRegion(String? v) {
    updateState((s) => s.copyWith(selectedRegion: v));
  }

  void _handleFailure(String message) {
    appState.setError(UiError(source: ErrorSource.insurance, message: message));
  }

  void _handleAlert(String message) {
    appState.setAlert(UiError(source: ErrorSource.insurance, message: message));
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(
        source: ErrorSource.insurance,
        message: message,
        onRetry: predict,
      ),
    );
  }
}
