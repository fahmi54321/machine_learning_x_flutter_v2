import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/entities/camera_result.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/repositories/camera_repository.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/usecases/camera_usecase.dart';

class CameraUsecaseImpl implements CameraUsecase {
  final CameraRepository cameraRepository;
  CameraUsecaseImpl({required this.cameraRepository});
  @override
  Future<Either<Failure, CameraResult>> getFileFromCamera() {
    return cameraRepository.getFileFromCamera();
  }
}
