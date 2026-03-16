import 'dart:convert';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';

import 'package:machine_learning_x_flutter/domain/entities/salaries/salaries_entity.dart';
import 'package:machine_learning_x_flutter/domain/failures/failures.dart';
import 'package:machine_learning_x_flutter/presentation/app/app_state.dart';
import 'package:machine_learning_x_flutter/presentation/base/bloc/base_state_bloc.dart';
import 'package:machine_learning_x_flutter/presentation/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/presentation/core/form/form_value.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/salaries/salaries_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/salaries/validation/validation_salaries_usecase.dart';

part 'predict_state.dart';

class PredictCubit extends BaseStateCubit<PredictState> {
  final ValidationSalariesUsecase validationSalariesUsecase;
  final SalariesUseCase salariesUseCase;
  final AppState appState;
  PredictCubit({
    required this.validationSalariesUsecase,
    required this.salariesUseCase,
    required this.appState,
  }) : super(PredictState.initial());

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
      _handleAlert('Years of Experience tidak boleh kosong');
      return false;
    }
  }

  Future<void> predict() async {
    if (!isFormValid) return;

    safeEitherRequest(
      key: SalariesAction.predict.name,
      onStart: () {
        _handleLoader(true);

        updateState(
          (s) => s.copyWith(
            predictStatus: PredictStatus.loading,
            salariesEntity: null,
          ),
        );
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
            visualizationImage: base64Decode(
              salary.visualization?.imageBase64 ?? '',
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

  void _handleAlert(String message) {
    appState.setAlert(UiError(source: ErrorSource.salaries, message: message));
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(source: ErrorSource.salaries, message: message, onRetry: predict),
    );
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }
}
