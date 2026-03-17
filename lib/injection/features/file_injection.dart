import 'package:machine_learning_x_flutter/features/file/data/datasources/file_datasource.dart';
import 'package:machine_learning_x_flutter/features/file/data/datasources/file_datasource_impl.dart';
import 'package:machine_learning_x_flutter/features/file/data/repositories/file_repository_impl.dart';
import 'package:machine_learning_x_flutter/features/file/domain/repositories/file_repository.dart';
import 'package:machine_learning_x_flutter/features/file/domain/usecases/file_usecase_impl.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/features/file/domain/usecases/file_usecase.dart';

void initFileFeature() {
  // USECASE
  sl.registerLazySingleton<FileUsecase>(
    () => FileUsecaseImpl(fileRepository: sl()),
  );

  // REPO
  sl.registerLazySingleton<FileRepository>(
    () => FileRepositoryImpl(fileDatasource: sl()),
  );

  // DATASOURCE
  sl.registerLazySingleton<FileDatasource>(
    () => FileDatasourceImpl(imagePicker: sl()),
  );
}
