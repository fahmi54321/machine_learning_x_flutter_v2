import 'package:machine_learning_x_flutter/features/camera/data/datasources/camera_datasource.dart';
import 'package:machine_learning_x_flutter/features/camera/data/datasources/camera_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/camera/data/repositories/camera_repository_impl.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/repositories/camera_repository.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/usecases/camera_usecase_impl.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/usecases/camera_usecase.dart';

void initCameraFeature() {
  // USECASE
  sl.registerLazySingleton<CameraUsecase>(
    () => CameraUsecaseImpl(cameraRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<CameraRepository>(
    () => CameraRepositoryImpl(cameraDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<CameraDatasource>(
    () => CameraDatasourceImpl(imagePicker: sl()),
  );
}
