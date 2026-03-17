import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/file/domain/entities/file_result.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/file/domain/repositories/file_repository.dart';
import 'package:machine_learning_x_flutter/features/file/domain/usecases/file_usecase.dart';

class FileUsecaseImpl implements FileUsecase {
  final FileRepository fileRepository;
  FileUsecaseImpl({required this.fileRepository});
  @override
  Future<Either<Failure, FileResult>> getFileFromGallery() {
    return fileRepository.getFileFromGallery();
  }
}
