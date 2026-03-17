import 'package:machine_learning_x_flutter/features/salaries/data/datasources/salaries_datasources.dart';
import 'package:machine_learning_x_flutter/features/salaries/data/datasources/salaries_datasources_impl.dart';
import 'package:machine_learning_x_flutter/features/salaries/data/repositories/salaries_repositories_impl.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/repositories/salaries_repositories.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/usecases/salaries_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/usecases/validation/validation_salaries_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/salaries/presentation/pages/cubit/predict_cubit.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/usecases/salaries_usecase.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/usecases/validation/validation_salaries_usecase.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initSalariesFeature() {
  // STATE
  sl.registerFactory(
    () => PredictCubit(
      validationSalariesUsecase: sl(),
      salariesUseCase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<ValidationSalariesUsecase>(
    () => ValidationSalariesUsecaseImpl(),
  );

  sl.registerLazySingleton<SalariesUseCase>(
    () => SalariesUseCaseImpl(salariesRepositories: sl()),
  );

  // REPO
  sl.registerLazySingleton<SalariesRepositories>(
    () => SalariesRepositoriesImpl(salariesDatasources: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<SalariesDatasources>(
    () => SalariesDatasourcesImpl(client: sl()),
  );
}
