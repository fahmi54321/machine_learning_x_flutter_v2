import 'package:machine_learning_x_flutter/features/startup/domain/entities/params/startup_params_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/core/app/app_state.dart';
import 'package:machine_learning_x_flutter/shared/base/provider/base_state_provider.dart';
import 'package:machine_learning_x_flutter/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';
import 'package:machine_learning_x_flutter/features/startup/presentation/pages/provider/startup_state.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/startup_usecase.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/validation/validation_startup_usecase.dart';

class StartupProvider extends BaseStateProvider<StartupState> {
  final ValidationStartupUsecase validationStartupUsecase;
  final StartupUsecase startupUsecase;
  final ConverterUsecase converterUsecase;
  final AppState appState;

  StartupProvider({
    required this.validationStartupUsecase,
    required this.startupUsecase,
    required this.converterUsecase,
    required this.appState,
  }) {
    initState(StartupState.initial());
  }

  void rdChanged(String val) {
    final status = validationStartupUsecase.rdFormValidation(value: val);

    updateState(
      (s) => s.copyWith(
        rdForm: FormValue(value: val, validationStatus: status),
      ),
    );
  }

  void adminChanged(String val) {
    final status = validationStartupUsecase.adminFormValidation(value: val);

    updateState(
      (s) => s.copyWith(
        adminForm: FormValue(value: val, validationStatus: status),
      ),
    );
    notifyListeners();
  }

  void marketingChanged(String val) {
    final status = validationStartupUsecase.marketingFormValidation(value: val);

    updateState(
      (s) => s.copyWith(
        marketingForm: FormValue(value: val, validationStatus: status),
      ),
    );
    notifyListeners();
  }

  bool get isFormValid {
    if (state.rdForm.validationStatus != ValidationStatus.success) {
      _handleAlert('Rd tidak boleh kosong');
      return false;
    } else if (state.adminForm.validationStatus != ValidationStatus.success) {
      _handleAlert('Admin tidak boleh kosong');
      return false;
    } else if (state.marketingForm.validationStatus !=
        ValidationStatus.success) {
      _handleAlert('Marketing tidak boleh kosong');
      return false;
    } else {
      return true;
    }
  }

  Future<void> predict() async {
    if (!isFormValid) {
      return;
    }

    await safeEitherRequest(
      key: StartupAction.predict.name,
      onStart: () {
        updateState((s) => s.copyWith(status: StartupStatus.loading));

        _handleLoader(true);
      },
      onComplete: () {
        _handleLoader(false);
      },
      request: (token) => startupUsecase.predict(
        params: PredictStartupParamsEntity(
          rdSpend: converterUsecase.stringToDouble(value: state.rdForm.value),
          administration: converterUsecase.stringToDouble(
            value: state.adminForm.value,
          ),
          marketingSpend: converterUsecase.stringToDouble(
            value: state.marketingForm.value,
          ),
          state: state.selectedState,
        ),
        cancelToken: token,
      ),
      onSuccess: (startup) {
        updateState(
          (s) =>
              s.copyWith(status: StartupStatus.success, startupEntity: startup),
        );

        _handleLoader(false);
      },
      onFailure: (failure) {
        updateState((s) => s.copyWith(status: StartupStatus.error));
        _handleLoader(false);

        if (failure is TimeoutFailure) {
          _handleTimeout(failure.message);
        } else {
          _handleFailure(failure.message);
        }
      },
    );
  }

  void updateSelectedState(String? v) {
    if (v != null) {
      updateState((s) => s.copyWith(selectedState: v));
    }
  }

  void _handleFailure(String message) {
    appState.setError(UiError(source: ErrorSource.startup, message: message));
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(source: ErrorSource.startup, message: message, onRetry: predict),
    );
  }

  void _handleAlert(String message) {
    appState.setAlert(UiError(source: ErrorSource.salaries, message: message));
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }
}
