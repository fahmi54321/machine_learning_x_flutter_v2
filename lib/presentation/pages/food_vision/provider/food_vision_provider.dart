import 'package:machine_learning_x_flutter/domain/entities/camera/camera_result.dart';
import 'package:machine_learning_x_flutter/domain/entities/file/file_result.dart';
import 'package:machine_learning_x_flutter/domain/entities/food/food_entity.dart';
import 'package:machine_learning_x_flutter/domain/entities/params/food/food_params_entity.dart';
import 'package:machine_learning_x_flutter/domain/failures/failures.dart';
import 'package:machine_learning_x_flutter/presentation/app/app_state.dart';
import 'package:machine_learning_x_flutter/presentation/base/provider/base_state_provider.dart';
import 'package:machine_learning_x_flutter/presentation/core/error/ui_error.dart';
import 'package:machine_learning_x_flutter/presentation/core/form/form_value.dart';
import 'package:machine_learning_x_flutter/presentation/core/permission/permission_status.dart';
import 'package:machine_learning_x_flutter/presentation/pages/food_vision/provider/food_vision_state.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/camera/camera_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/converter/converter_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/file/file_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/food/food_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/food/validation/validation_food_usecase.dart';
import 'package:machine_learning_x_flutter/presentation/usecases/permission/permission_usecase.dart';

class FoodVisionProvider extends BaseStateProvider<FoodVisionState> {
  final FoodUsecase foodUsecase;
  final ConverterUsecase converterUsecase;
  final FileUsecase fileUsecase;
  final CameraUsecase cameraUsecase;
  final ValidationFoodUsecase validationFoodUsecase;
  final PermissionUsecase permissionUsecase;
  final AppState appState;

  FoodVisionProvider({
    required this.foodUsecase,
    required this.converterUsecase,
    required this.fileUsecase,
    required this.cameraUsecase,
    required this.validationFoodUsecase,
    required this.permissionUsecase,
    required this.appState,
  }) {
    initState(FoodVisionState.initial());
  }

  Future<void> predict() async {
    await safeEitherRequest<Failure, FoodEntity>(
      key: FoodStateAction.predict.name,
      onStart: () {
        _handleLoader(true);
        updateState((s) => s.copyWith(status: FoodVisionStatus.loading));
      },
      onComplete: () {
        _handleLoader(false);
        updateState((s) => s.copyWith(status: FoodVisionStatus.success));
      },
      request: (token) => foodUsecase.predict(
        params: FoodParamsEntity(
          imagePath: state.selectedImage?.path ?? '',
          trueLabel: state.trueLabelValue.value,
        ),
        cancelToken: token,
      ),
      onFailure: (failure) {
        updateState((s) => s.copyWith(status: FoodVisionStatus.error));

        _handleLoader(false);

        if (failure is TimeoutFailure) {
          _handleTimeout(failure.message);
        } else {
          _handleFailure(failure.message);
        }
      },
      onSuccess: (food) {
        updateState(
          (s) => s.copyWith(
            status: FoodVisionStatus.success,
            prediction: food.prediction,
            description: food.description,
            trueLabel: food.trueLabel,
            confidence: food.confidence,
            imageBase64: converterUsecase.base64ToUint8List(
              val: food.imageBase64,
            ),
          ),
        );
      },
    );
  }

  Future<void> cekPermissionFile() async {
    await safeEitherCall(
      call: () => permissionUsecase.cekPermissionFile(),
      onFailure: (failure) => _handleFailure(failure.message),
      onSuccess: (status) {
        updateState((s) => s.copyWith(permissionFileStatus: status));
      },
    );
  }

  Future<void> requestPermissionFile() async {
    await safeEitherCall(
      call: () => permissionUsecase.reqPermissionFile(),
      onFailure: (failure) => _handleFailure(failure.message),
      onSuccess: (status) {
        updateState((s) => s.copyWith(permissionFileStatus: status));
      },
    );
  }

  Future<void> cekPermissionCamera() async {
    await safeEitherCall(
      call: () => permissionUsecase.cekPermissionCamera(),
      onFailure: (failure) => _handleFailure(failure.message),
      onSuccess: (status) {
        updateState((s) => s.copyWith(permissionCameraStatus: status));
      },
    );
  }

  Future<void> requestPermissionCamera() async {
    await safeEitherCall(
      call: () => permissionUsecase.reqPermissionCamera(),
      onFailure: (failure) => _handleFailure(failure.message),
      onSuccess: (status) {
        updateState((s) => s.copyWith(permissionCameraStatus: status));
      },
    );
  }

  Future<void> pickImageFromGallery() async {
    await cekPermissionFile();

    if (state.permissionFileStatus != AskPermissionStatus.granted) {
      await requestPermissionFile();
      return;
    }

    await safeEitherCall(
      call: () => fileUsecase.getFileFromGallery(),
      onFailure: (failure) {
        updateState(
          (s) => s.copyWith(imagePickerStatus: ImagePickerStatus.error),
        );
        _handleFailure(failure.message);
      },
      onSuccess: (fileResult) {
        if (fileResult is FileSuccess) {
          updateState(
            (s) => s.copyWith(
              imagePickerStatus: ImagePickerStatus.success,
              selectedImage: converterUsecase.filePathToFile(
                path: fileResult.path,
              ),
            ),
          );
        }
      },
    );
  }

  Future<void> pickImageFromCamera() async {
    await cekPermissionCamera();

    if (state.permissionCameraStatus != AskPermissionStatus.granted) {
      await requestPermissionCamera();
      return;
    }

    await safeEitherCall(
      call: () => cameraUsecase.getFileFromCamera(),
      onFailure: (failure) {
        updateState(
          (s) => s.copyWith(imagePickerStatus: ImagePickerStatus.error),
        );
        _handleFailure(failure.message);
      },
      onSuccess: (cameraResult) {
        if (cameraResult is CameraSuccess) {
          updateState(
            (s) => s.copyWith(
              imagePickerStatus: ImagePickerStatus.success,
              selectedImage: converterUsecase.filePathToFile(
                path: cameraResult.file.path,
              ),
            ),
          );
        }
      },
    );
  }

  void setTrueLabel(String value) {
    final status = validationFoodUsecase.trueLabelValidation(value: value);

    updateState(
      (s) => s.copyWith(
        trueLabelValue: FormValue(value: value, validationStatus: status),
      ),
    );
  }

  void _handleLoader(bool val) {
    appState.setLoading(val);
  }

  void _handleFailure(String message) {
    appState.setError(
      UiError(source: ErrorSource.foodVision, message: message),
    );
  }

  void _handleTimeout(String message) {
    appState.setTimeout(
      UiError(
        source: ErrorSource.foodVision,
        message: message,
        onRetry: predict,
      ),
    );
  }
}
