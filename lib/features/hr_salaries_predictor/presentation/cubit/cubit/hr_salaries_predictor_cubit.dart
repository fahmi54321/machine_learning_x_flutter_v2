import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:machine_learning_x_flutter/core/app/app_state.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_params_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_salaries_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/hr_salaries_predictor_usecase.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/validation/hr_salaries_predictor_validation_usecase.dart';
import 'package:machine_learning_x_flutter/shared/base/bloc/base_state_bloc.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

part 'hr_salaries_predictor_state.dart';

class HrSalariesPredictorCubit
    extends BaseStateCubit<HrSalariesPredictorState> {
  HrSalariesPredictorCubit({
    required this.converterUsecase,
    required this.hrSalariesPredictorUsecase,
    required this.hrSalariesPredictorValidationUsecase,
    required this.appState,
  }) : super(HrSalariesPredictorState.initial());

  final ConverterUsecase converterUsecase;
  final HrSalariesPredictorUsecase hrSalariesPredictorUsecase;
  final HrSalariesPredictorValidationUsecase
  hrSalariesPredictorValidationUsecase;
  final AppState appState;

  double _getLevel() {
    return converterUsecase.stringToDouble(value: state.level.value);
  }

  List<FlSpot> listHrPointToListFlSpot({required List<HrPointEntity> list}) {
    return converterUsecase.listHrPointToListFlSpot(list: list);
  }

  bool get isValid => state.level.validationStatus == ValidationStatus.valid;

  void changeLevel(String value) {
    final status = hrSalariesPredictorValidationUsecase.levelValidation(
      value: value,
    );
    updateState(
      (s) => s.copyWith(
        level: FormValue(value: value, validationStatus: status),
      ),
    );
  }

  Future<void> predict() async {
    if (isValid) {
      await safeEitherRequest(
        key: HrSalariesPredictorAction.predict.name,
        onStart: () {
          _handlerLoader(true);

          updateState(
            (s) => s.copyWith(
              hrSalariesPresictorSatus: HrSalariesPredictorStatus.loading,
            ),
          );
        },
        onComplete: () async {},
        request: (token) => hrSalariesPredictorUsecase.predictSalaries(
          params: HrParamsEntity(level: _getLevel()),
          cancelToken: token,
        ),
        onSuccess: (data) async {
          updateState(
            (s) => s.copyWith(
              hrSalariesPresictorSatus: HrSalariesPredictorStatus.success,
              hrSalariesEntity: data,
            ),
          );
          _handlerLoader(false);
        },
        onFailure: (failure) async {
          updateState(
            (s) => s.copyWith(
              hrSalariesPresictorSatus: HrSalariesPredictorStatus.error,
            ),
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
      _handleAlert('Level tidak boleh kosong');
    }
  }

  void _handlerFailure({required String message}) {
    appState.setError(
      UiError(source: ErrorSource.hrSalariesPredictor, message: message),
    );
  }

  void _handlerTimout({
    required String message,
    required Future<void> Function() onRetry,
  }) {
    appState.setTimeout(
      UiError(
        source: ErrorSource.hrSalariesPredictor,
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
      UiError(source: ErrorSource.hrSalariesPredictor, message: value),
    );
  }

  void updateTouchedSpot({required HrPointEntity? data}) {
    updateState((s) => s.copyWith(touchedSpot: data));
  }

  // Future<void> predict() async {
  //   isLoading = true;
  //   notifyListeners();

  //   try {
  //     final level = _getLevel();

  //     final res = await http.post(
  //       Uri.parse('http://10.0.2.2:5000/predict'),
  //       headers: {'Content-Type': 'application/json'},
  //       body: jsonEncode({"position_level": level}),
  //     );

  //     final json = jsonDecode(res.body);

  //     salaryFormatted = json['prediction']['formatted'];
  //     category = json['insight']['category'];
  //     recommendation = json['insight']['recommendation'];

  //     curve = (json['visualization']['curve'] as List)
  //         .map(
  //           (e) =>
  //               FlSpot((e['x'] as num).toDouble(), (e['y'] as num).toDouble()),
  //         )
  //         .toList();

  //     realData = (json['visualization']['real_data'] as List)
  //         .map(
  //           (e) =>
  //               FlSpot((e['x'] as num).toDouble(), (e['y'] as num).toDouble()),
  //         )
  //         .toList();

  //     userPoint = FlSpot(
  //       (json['visualization']['user_point']['x'] as num).toDouble(),
  //       (json['visualization']['user_point']['y'] as num).toDouble(),
  //     );
  //   } catch (e) {
  //     salaryFormatted = 'Error';
  //     recommendation = 'Failed to connect API';
  //   }

  //   isLoading = false;
  //   notifyListeners();
  // }

  String formatUSD(double value) {
    return converterUsecase.doubleToFomatUSD(value: value);
  }
}
