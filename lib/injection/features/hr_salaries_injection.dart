import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/datasources/hr_salaries_predictor_datasources.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/datasources/hr_salaries_predictor_datasources_impl.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/data/repositories/hr_salaries_predictor_repositories_impl.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/repositories/hr_salaries_predictor_repositories.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/hr_salaries_predictor_usecase.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/hr_salaries_predictor_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/validation/hr_salaries_predictor_validation_usecase.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/usecase/validation/hr_salaries_predictor_validation_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/cubit/cubit/hr_salaries_predictor_cubit.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initHrSalariesFeature() {
  // STATE
  sl.registerFactory(
    () => HrSalariesPredictorCubit(
      converterUsecase: sl(),
      hrSalariesPredictorUsecase: sl(),
      hrSalariesPredictorValidationUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<HrSalariesPredictorUsecase>(
    () => HrSalariesPredictorUsecaseImpl(hrSalariesPredictorRepositories: sl()),
  );
  sl.registerLazySingleton<HrSalariesPredictorValidationUsecase>(
    () => HrSalariesPredictorValidationUsecaseImpl(),
  );

  // REPO
  sl.registerLazySingleton<HrSalariesPredictorRepositories>(
    () => HrSalariesPredictorRepositoriesImpl(
      hrSalariesPredictorDatasources: sl(),
    ),
  );

  // DATASOURCE
  sl.registerLazySingleton<HrSalariesPredictorDatasources>(
    () => HrSalariesPredictorDatasourcesImpl(client: sl()),
  );
}
