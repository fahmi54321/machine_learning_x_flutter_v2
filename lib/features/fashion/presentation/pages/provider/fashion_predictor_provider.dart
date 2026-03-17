// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:machine_learning_x_flutter/core/error/failures.dart';

import 'package:machine_learning_x_flutter/core/app/app_state.dart';
import 'package:machine_learning_x_flutter/shared/base/provider/base_state_provider.dart';
import 'package:machine_learning_x_flutter/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/features/fashion/presentation/pages/provider/fashion_predictor_state.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/usecase/fashion_usecase.dart';

class FashionPredictorProvider
    extends BaseStateProvider<FashionPredictorState> {
  final FashionUsecase fashionUsecase;
  final ConverterUsecase converterUsecase;
  final AppState appState;

  FashionPredictorProvider({
    required this.fashionUsecase,
    required this.converterUsecase,
    required this.appState,
  }) {
    initState(FashionPredictorState.initial());
  }

  Future<void> predict() async {
    await safeEitherRequest(
      key: FashionStateAction.predict.name,
      onStart: () {
        _handleLoader(true);
        updateState((s) => s.copyWith(status: FashionPredictorStatus.loading));
      },
      onComplete: () {
        _handleLoader(false);
        updateState((s) => s.copyWith(status: FashionPredictorStatus.success));
      },
      request: (token) => fashionUsecase.predict(cancelToken: token),
      onFailure: (failure) {
        updateState((s) => s.copyWith(status: FashionPredictorStatus.error));
        _handleLoader(false);

        if (failure is TimeoutFailure) {
          _handleTimeout(failure.message);
        } else {
          _handleFailure(failure.message);
        }
      },
      onSuccess: (fashion) {
        updateState(
          (s) => s.copyWith(
            status: FashionPredictorStatus.success,
            prediction: fashion.prediction,
            description: fashion.description,
            trueLabel: fashion.trueLabel,
            confidence: fashion.confidence,
            imageBase64: converterUsecase.base64ToUint8List(
              val: fashion.imageBase64,
            ),
          ),
        );
      },
    );
  }

  void _handleFailure(String message) {
    appState.setError(UiError(source: ErrorSource.fashion, message: message));
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(source: ErrorSource.fashion, message: message, onRetry: predict),
    );
  }
}
