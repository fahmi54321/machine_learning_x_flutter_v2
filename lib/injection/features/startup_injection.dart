import 'package:machine_learning_x_flutter/features/startup/data/datasources/startup_datasource.dart';
import 'package:machine_learning_x_flutter/features/startup/data/datasources/startup_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/startup/data/repositories/startup_repositories_impl.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/repositories/startup_repository.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/startup_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/validation/validation_startup_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/startup/presentation/pages/provider/startup_provider.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/startup_usecase.dart';
import 'package:machine_learning_x_flutter/features/startup/domain/usecases/validation/validation_startup_usecase.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initStartupFeature() {
  // STATE
  sl.registerFactory(
    () => StartupProvider(
      validationStartupUsecase: sl(),
      startupUsecase: sl(),
      converterUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<ValidationStartupUsecase>(
    () => ValidationStartupUsecaseImpl(),
  );

  sl.registerLazySingleton<StartupUsecase>(
    () => StartupUsecaseImpl(startupRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<StartupRepository>(
    () => StartupRepositoriesImpl(startupDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<StartupDatasource>(
    () => StartupDataspurceImpl(client: sl()),
  );
}
