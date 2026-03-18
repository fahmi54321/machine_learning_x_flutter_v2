import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/cubit/cubit/hr_salaries_predictor_cubit.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';

class ButtonHrSalariesPredictor extends StatelessWidget {
  const ButtonHrSalariesPredictor({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPrimaryButton(
      text: 'Predict Salary',
      onTap: context.read<HrSalariesPredictorCubit>().predict,
    );
  }
}
