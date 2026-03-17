import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase_impl.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';

void initConverterFeature() {
  // USECASE
  sl.registerLazySingleton<ConverterUsecase>(() => ConverterUsecaseImpl());
}
