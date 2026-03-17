import 'package:dartz/dartz.dart';
import 'package:machine_learning_x_flutter/features/permission/data/datasources/permission_datasource.dart';
import 'package:machine_learning_x_flutter/core/error/exceptions.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/repositories/permision_repository.dart';
import 'package:machine_learning_x_flutter/features/permission/domain/entities/permission_status.dart';

import 'package:permission_handler/permission_handler.dart';

class PermissionRepositoryImpl implements PermissionRepository {
  final PermissionDatasource permissionDatasource;

  PermissionRepositoryImpl({required this.permissionDatasource});

  AskPermissionStatus _mapStatus(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.granted:
        return AskPermissionStatus.granted;
      case PermissionStatus.denied:
        return AskPermissionStatus.denied;
      case PermissionStatus.permanentlyDenied:
        return AskPermissionStatus.permanentlyDenied;
      case PermissionStatus.limited:
        return AskPermissionStatus.limited;
      default:
        return AskPermissionStatus.initial;
    }
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> reqPermissionCamera() async {
    try {
      final result = await permissionDatasource.reqPermissionCamera();
      return right(_mapStatus(result));
    } on PermissionException catch (e) {
      return Left(PermissionFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on TimeoutException {
      return Left(TimeoutFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(ServerFailure('Error'));
    }
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> cekPermissionCamera() async {
    try {
      final result = await permissionDatasource.cekPermissionCamera();
      return right(_mapStatus(result));
    } on PermissionException catch (e) {
      return Left(PermissionFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on TimeoutException {
      return Left(TimeoutFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(ServerFailure('Error'));
    }
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> reqPermissionFile() async {
    try {
      final result = await permissionDatasource.reqPermissionFile();
      return right(_mapStatus(result));
    } on PermissionException catch (e) {
      return Left(PermissionFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on TimeoutException {
      return Left(TimeoutFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(ServerFailure('Error'));
    }
  }

  @override
  Future<Either<Failure, AskPermissionStatus>> cekPermissionFile() async {
    try {
      final result = await permissionDatasource.cekPermissionFile();
      return right(_mapStatus(result));
    } on PermissionException catch (e) {
      return Left(PermissionFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } on TimeoutException {
      return Left(TimeoutFailure());
    } on NetworkException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(ServerFailure('Error'));
    }
  }
}
