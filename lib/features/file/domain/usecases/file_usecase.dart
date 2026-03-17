import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/file/domain/entities/file_result.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class FileUsecase {
  Future<Either<Failure, FileResult>> getFileFromGallery();
}
