import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/cubit/cubit/hr_salaries_predictor_cubit.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

class InputHrSalariesPredictor extends StatelessWidget {
  const InputHrSalariesPredictor({super.key});

  @override
  Widget build(BuildContext context) {
    final level = context.watch<HrSalariesPredictorCubit>().state.level;
    final errorText =
        level.validationStatus == ValidationStatus.notValid ||
            level.validationStatus == ValidationStatus.initial
        ? 'Tidak boleh kosong'
        : null;
    return TextFormField(
      keyboardType: TextInputType.number,
      initialValue: level.value,
      decoration: InputDecoration(hintText: "e.g. 6.5", errorText: errorText),
      onChanged: context.read<HrSalariesPredictorCubit>().changeLevel,
    );
  }
}
