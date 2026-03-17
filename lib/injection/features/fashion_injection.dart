import 'package:machine_learning_x_flutter/features/fashion/data/datasources/fashion_datasource.dart';
import 'package:machine_learning_x_flutter/features/fashion/data/datasources/fashion_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/fashion/data/repositories/fashion_respository_impl.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/repositories/fashion_repository.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/usecase/fashion_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/fashion/presentation/pages/provider/fashion_predictor_provider.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/usecase/fashion_usecase.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initFashionFeature() {
  // STATE
  sl.registerFactory(
    () => FashionPredictorProvider(
      fashionUsecase: sl(),
      converterUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<FashionUsecase>(
    () => FashionUsecaseImpl(fashionRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<FashionRepository>(
    () => FashionRespositoryImpl(fashionDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<FashionDatasource>(
    () => FashionDatasourceImpl(client: sl()),
  );
}
