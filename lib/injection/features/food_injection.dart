import 'package:machine_learning_x_flutter/features/food_vision/data/datasources/food_datasource.dart';
import 'package:machine_learning_x_flutter/features/food_vision/data/datasources/food_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/food_vision/data/repositories/food_respository_impl.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/repositories/food_repository.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/food_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/validation/validation_food_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/food_vision/presentation/pages/provider/food_vision_provider.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/food_usecase.dart';
import 'package:machine_learning_x_flutter/features/food_vision/domain/usecases/validation/validation_food_usecase.dart';

void initFoodFeature() {
  // STATE
  sl.registerFactory(
    () => FoodVisionProvider(
      foodUsecase: sl(),
      converterUsecase: sl(),
      fileUsecase: sl(),
      cameraUsecase: sl(),
      validationFoodUsecase: sl(),
      permissionUsecase: sl(),
      appState: sl(),
    ),
  );

  // USECASE
  sl.registerLazySingleton<FoodUsecase>(
    () => FoodUsecaseImpl(foodRepository: sl()),
  );

  sl.registerLazySingleton<ValidationFoodUsecase>(
    () => ValidationFoodUsecaseImpl(),
  );

  // REPO
  sl.registerLazySingleton<FoodRepository>(
    () => FoodRespositoryImpl(foodDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<FoodDatasource>(
    () => FoodDatasourceImpl(client: sl()),
  );
}
