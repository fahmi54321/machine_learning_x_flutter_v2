import 'package:machine_learning_x_flutter/features/customer_prediction/data/datasource/customer_prediction_datasource.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/datasource/customer_prediction_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/data/repositories/customer_prediction_repository_impl.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/repositories/customer_prediction_repository.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/customer_prediction_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/customer_prediction_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/validation/customer_prediction_validation_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/usecase/validation/customer_prediction_validation_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_cubit.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initCustomerFeature() {
  // STATE
  sl.registerFactory(
    () => CustomerPredictionCubit(
      customerPredictionUsecase: sl(),
      customerPredictionValidationUsecase: sl(),
      converterUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<CustomerPredictionValidationUsecase>(
    () => CustomerPredictionValidationUsecaseImpl(),
  );

  sl.registerLazySingleton<CustomerPredictionUsecase>(
    () => CustomerPredictionUsecaseImpl(customerPredictionRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<CustomerPredictionRepository>(
    () => CustomerPredictionRepositoryImpl(customerPredictionDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<CustomerPredictionDatasource>(
    () => CustomerPredictionDatasourceImpl(client: sl()),
  );
}
