import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/entities/camera_result.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';

abstract class CameraUsecase {
  Future<Either<Failure, CameraResult>> getFileFromCamera();
}
