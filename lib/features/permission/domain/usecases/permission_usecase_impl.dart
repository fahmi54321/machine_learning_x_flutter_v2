// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/repositories/permision_repository.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/entities/permission_status.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/usecases/permission_usecase.dart';

class PermissionUsecaseImpl implements PermissionUsecase {
  final PermissionRepository permissionRepository;
  PermissionUsecaseImpl({required this.permissionRepository});
  @override
  Future<Either<Failure, AskPermissionStatus>> reqPermissionCamera() {
    return permissionRepository.reqPermissionCamera();
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> reqPermissionFile() {
    return permissionRepository.reqPermissionFile();
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> cekPermissionCamera() {
    return permissionRepository.cekPermissionCamera();
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> cekPermissionFile() {
    return permissionRepository.cekPermissionFile();
  }
}
