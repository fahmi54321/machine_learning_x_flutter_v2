import 'package:machine_learning_x_flutter/features/insurance/data/datasources/insurance_datasource.dart';
import 'package:machine_learning_x_flutter/features/insurance/data/datasources/insurance_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/insurance/data/repositories/insurance_repository_impl.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/repositories/insurance_repository.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/insurance_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/validation/insurance_validation_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/insurance/presentation/pages/provider/insurance_provider.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/insurance_usecase.dart';
import 'package:machine_learning_x_flutter/features/insurance/domain/usecases/validation/insurance_validation_usecase.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initInsuranceFeature() {
  // STATE
  sl.registerFactory(
    () => InsuranceProvider(
      insuranceValidationUsecase: sl(),
      insuranceUsecase: sl(),
      converterUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<InsuranceValidationUsecase>(
    () => InsuranceValidationUsecaseImpl(),
  );

  sl.registerLazySingleton<InsuranceUsecase>(
    () => InsuranceUsecaseImpl(insuranceRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<InsuranceRepository>(
    () => InsuranceRepositoryImpl(insuranceDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<InsuranceDatasource>(
    () => InsuranceDatasourceImpl(client: sl()),
  );
}
