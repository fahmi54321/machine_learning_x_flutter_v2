import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/camera/data/datasources/camera_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/entities/camera_result.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/camera/domain/repositories/camera_repository.dart';

class CameraRepositoryImpl implements CameraRepository {
  final CameraDatasource cameraDatasource;

  CameraRepositoryImpl({required this.cameraDatasource});

  @override
  Future<Either<Failure, CameraResult>> getFileFromCamera() async {
    try {
      final result = await cameraDatasource.getFileFromCamera();

      if (result == null) {
        return right(CameraCanceled());
      }

      return right(CameraSuccess(result));
    } on PermissionException catch (e) {
      return Left(PermissionFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(ServerFailure('Error'));
    }
  }
}
