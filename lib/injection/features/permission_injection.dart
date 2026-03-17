import 'package:machine_learning_x_flutter/features/permission/data/datasources/permission_datasource.dart';
import 'package:machine_learning_x_flutter/features/permission/data/datasources/permission_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/permission/data/repositories/permission_repository_impl.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/repositories/permision_repository.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/usecases/permission_usecase_impl.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/usecases/permission_usecase.dart';

void initPermissionFeature() {
  // USECASE
  sl.registerLazySingleton<PermissionUsecase>(
    () => PermissionUsecaseImpl(permissionRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<PermissionRepository>(
    () => PermissionRepositoryImpl(permissionDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<PermissionDatasource>(
    () => PermissionDatasourceImpl(deviceInfoPlugin: sl()),
  );
}
