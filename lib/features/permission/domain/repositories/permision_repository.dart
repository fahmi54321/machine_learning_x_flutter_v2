import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/entities/permission_status.dart';

abstract class PermissionRepository {
  Future<Either<Failure, AskPermissionStatus>> reqPermissionCamera();

  Future<Either<Failure, AskPermissionStatus>> reqPermissionFile();

  Future<Either<Failure, AskPermissionStatus>> cekPermissionCamera();

  Future<Either<Failure, AskPermissionStatus>> cekPermissionFile();
}
