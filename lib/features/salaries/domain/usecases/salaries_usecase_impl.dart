import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/entities/salaries_entity.dart';
import 'package:machine_learning_x_flutter/core/error/failures.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/repositories/salaries_repositories.dart';
import 'package:machine_learning_x_flutter/features/salaries/domain/usecases/salaries_usecase.dart';

class SalariesUseCaseImpl implements SalariesUseCase {
  final SalariesRepositories salariesRepositories;
  const SalariesUseCaseImpl({required this.salariesRepositories});

  @override
  Future<Either<Failure, SalariesEntity>> loadPredict({
    required String val,
    required CancelToken? cancelToken,
  }) async {
    return salariesRepositories.loadPredict(val: val, cancelToken: cancelToken);
  }
}
