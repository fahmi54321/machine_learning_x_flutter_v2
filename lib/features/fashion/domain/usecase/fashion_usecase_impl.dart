import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:machine_learning_x_flutter/features/fashion/domain/entities/fashion_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/repositories/fashion_repository.dart';
import 'package:machine_learning_x_flutter/features/fashion/domain/usecase/fashion_usecase.dart';

class FashionUsecaseImpl implements FashionUsecase {
  final FashionRepository fashionRepository;
  const FashionUsecaseImpl({required this.fashionRepository});
  @override
  Future<Either<Failure, FashionEntity>> predict({
    required CancelToken? cancelToken,
  }) {
    return fashionRepository.predict(cancelToken: cancelToken);
  }
}
