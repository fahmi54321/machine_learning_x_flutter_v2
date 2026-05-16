// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:machine_learning_x_flutter/core/app/app_state.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/customer_prediction_params_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/customer_prediction_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/validation/customer_prediction_validation_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_state.dart';
import 'package:machine_learning_x_flutter/shared/base/bloc/base_state_bloc.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

class CustomerPredictionCubit extends BaseStateCubit<CustomerPredictionState> {
  final ConverterUsecase converterUsecase;
  final CustomerPredictionUsecase customerPredictionUsecase;
  final CustomerPredictionValidationUsecase customerPredictionValidationUsecase;
  final AppState appState;
  CustomerPredictionCubit({
    required this.converterUsecase,
    required this.customerPredictionUsecase,
    required this.customerPredictionValidationUsecase,
    required this.appState,
  }) : super(CustomerPredictionState.initial());

  double _getAge() {
    return converterUsecase.stringToDouble(value: state.age.value);
  }

  double _getEstimatedSalary() {
    return converterUsecase.stringToDouble(value: state.estimatedSalary.value);
  }

  bool get isValid =>
      state.age.validationStatus == ValidationStatus.valid &&
      state.estimatedSalary.validationStatus == ValidationStatus.valid;

  void changeAge(String value) {
    final status = customerPredictionValidationUsecase.ageValidation(
      value: value,
    );

    updateState(
      (s) => s.copyWith(
        age: FormValue(value: value, validationStatus: status),
      ),
    );
  }

  void changeEstimatedSalary(String value) {
    final status = customerPredictionValidationUsecase
        .estimatedSalaryValidation(value: value);

    updateState(
      (s) => s.copyWith(
        estimatedSalary: FormValue(value: value, validationStatus: status),
      ),
    );
  }

  void _handlerFailure({required String message}) {
    appState.setError(
      UiError(source: ErrorSource.customerPredict, message: message),
    );
  }

  void _handlerTimout({
    required String message,
    required Future<void> Function() onRetry,
  }) {
    appState.setTimeout(
      UiError(
        source: ErrorSource.customerPredict,
        message: message,
        onRetry: onRetry,
      ),
    );
  }

  void _handlerLoader(bool value) {
    appState.setLoading(value);
  }

  void _handleAlert(String value) {
    appState.setAlert(
      UiError(source: ErrorSource.customerPredict, message: value),
    );
  }

  Future<void> predict() async {
    if (isValid) {
      await safeEitherRequest(
        key: CustomerPredictionAction.predict.name,
        onStart: () {
          _handlerLoader(true);
          updateState(
            (s) => s.copyWith(predictionStatus: PredictionStatus.loading),
          );
        },
        request: (cancelToken) {
          return customerPredictionUsecase.predictCustomer(
            params: CustomerPredictionParamsEntity(
              age: _getAge(),
              estimatedSalary: _getEstimatedSalary(),
            ),
            cancelToken: cancelToken,
          );
        },
        onSuccess: (data) {
          updateState(
            (s) => s.copyWith(
              predictionStatus: PredictionStatus.success,
              customerPredictionEntity: data,
            ),
          );

          _handlerLoader(false);
        },
        onFailure: (failure) {
          updateState(
            (s) => s.copyWith(predictionStatus: PredictionStatus.error),
          );
          _handlerLoader(false);
          if (failure is TimeoutFailure) {
            _handlerTimout(message: failure.message, onRetry: predict);
          } else {
            _handlerFailure(message: failure.message);
          }
        },
      );
    } else {
      if (state.age.validationStatus == ValidationStatus.notValid) {
        _handleAlert('Umur tidak boleh kosong');
      } else if (state.estimatedSalary.validationStatus ==
          ValidationStatus.notValid) {
        _handleAlert('Estimasi Gaji tidak boleh kosong');
      } else {
        _handleAlert('Umur atau Estimasi Gaji tidak boleh kosong');
      }
    }
  }

  Future<void> plotData() async {
    await safeEitherRequest(
      key: CustomerPredictionAction.plotData.name,
      onStart: () {
        _handlerLoader(true);
        updateState((s) => s.copyWith(plotDataStatus: PlotDataStatus.loading));
      },
      request: (cancelToken) {
        return customerPredictionUsecase.plotData(cancelToken: cancelToken);
      },
      onSuccess: (data) {
        updateState(
          (s) => s.copyWith(
            plotDataStatus: PlotDataStatus.success,
            plotDataEntity: data,
          ),
        );

        _handlerLoader(false);
      },
      onFailure: (failure) {
        updateState((s) => s.copyWith(plotDataStatus: PlotDataStatus.error));
        _handlerLoader(false);
        if (failure is TimeoutFailure) {
          _handlerTimout(message: failure.message, onRetry: predict);
        } else {
          _handlerFailure(message: failure.message);
        }
      },
    );
  }
}
