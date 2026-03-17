import 'package:machine_learning_x_flutter/shared/base/bloc/base_request_bloc.dart';

abstract class BaseStateCubit<T> extends BaseRequestBloc<T> {
  BaseStateCubit(super.initialState);

  void setState(T newState) {
    if (!isClosedSafe) {
      emit(newState);
    }
  }

  void updateState(T Function(T current) builder) {
    if (!isClosedSafe) {
      emit(builder(state));
    }
  }
}
