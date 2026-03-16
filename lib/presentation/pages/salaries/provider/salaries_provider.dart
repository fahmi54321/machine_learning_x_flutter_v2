// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:machine_learning_x_flutter/domain/failures/failures.dart';
import 'package:machine_learning_x_flutter/presentation/app/app_state.dart';
import 'package:machine_learning_x_flutter/presentation/base/provider/base_state_provider.dart';
import 'package:machine_learning_x_flutter/presentation/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/presentation/core/form/form_value.dart';
import 'package:machine_learning_x_flutter/presentation/pages/salaries/cubit/predict_cubit.dart';
import 'package:machine_learning_x_flutter/presentation/pages/salaries/provider/salaries_state.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/converter/converter_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/salaries/salaries_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/salaries/validation/validation_salaries_usecase.dart';

class SalariesProvider extends BaseStateProvider<SalariesState> {
  final ValidationSalariesUsecase validationSalariesUsecase;
  final SalariesUseCase salariesUseCase;
  final ConverterUsecase converterUsecase;
  final AppState appState;

  SalariesProvider({
    required this.validationSalariesUsecase,
    required this.salariesUseCase,
    required this.converterUsecase,
    required this.appState,
  }) {
    initState(SalariesState.initial());
  }

  Future<void> yearsChanged(String val) async {
    final status = validationSalariesUsecase.salariesValidation(value: val);

    updateState(
      (s) => s.copyWith(
        yearsOfExperience: FormValue(value: val, validationStatus: status),
      ),
    );
  }

  bool get isFormValid {
    if (state.yearsOfExperience.validationStatus == ValidationStatus.success) {
      return true;
    } else {
      _handleAlert('Years Of Experience tidak boleh kosong');
      return false;
    }
  }

  Future<void> predict() async {
    if (!isFormValid) return;

    await safeEitherRequest(
      key: SalariesAction.predict.name,
      onStart: () {
        updateState(
          (s) => s.copyWith(
            predictStatus: PredictStatus.loading,
            salariesEntity: null,
          ),
        );

        _handleLoader(true);
      },
      onComplete: () {
        _handleLoader(false);
      },
      request: (token) => salariesUseCase.loadPredict(
        val: state.yearsOfExperience.value,
        cancelToken: token,
      ),
      onSuccess: (salary) {
        updateState(
          (s) => s.copyWith(
            salariesEntity: salary,
            predictStatus: PredictStatus.success,
            visualizationImage: converterUsecase.base64ToUint8List(
              val: salary.visualization?.imageBase64 ?? '',
            ),
          ),
        );
        _handleLoader(false);
      },
      onFailure: (failure) {
        updateState((s) => s.copyWith(predictStatus: PredictStatus.error));
        _handleLoader(false);

        if (failure is TimeoutFailure) {
          _handleTimeout(failure.message);
        } else {
          _handleFailure(failure.message);
        }
      },
    );
  }

  void _handleFailure(String message) {
    appState.setError(UiError(source: ErrorSource.salaries, message: message));
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(source: ErrorSource.salaries, message: message, onRetry: predict),
    );
  }

  void _handleAlert(String message) {
    appState.setAlert(UiError(source: ErrorSource.salaries, message: message));
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }
}
