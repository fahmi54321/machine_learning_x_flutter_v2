import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_cubit.dart';
import 'package:machine_learning_x_flutter/shared/form/form_value.dart';

class InputCustomerPrediction extends StatelessWidget {
  const InputCustomerPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    final errorTextAge =
        context.watch<CustomerPredictionCubit>().state.age.validationStatus ==
            ValidationStatus.notValid
        ? 'Umur tidak boleh kosong'
        : null;
    final errorTextEstimatedSalary =
        context
                .watch<CustomerPredictionCubit>()
                .state
                .estimatedSalary
                .validationStatus ==
            ValidationStatus.notValid
        ? 'Estimasi Gaji tidak boleh kosong'
        : null;
    final String ageInitialValue = context
        .read<CustomerPredictionCubit>()
        .state
        .age
        .value;
    final String estimationSalaryInitialValue = context
        .read<CustomerPredictionCubit>()
        .state
        .estimatedSalary
        .value;
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            initialValue: ageInitialValue,
            decoration: InputDecoration(
              hintText: 'Umur',
              errorText: errorTextAge,
            ),
            onChanged: context.read<CustomerPredictionCubit>().changeAge,
          ),
        ),

        const SizedBox(width: 20),

        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            initialValue: estimationSalaryInitialValue,
            decoration: InputDecoration(
              hintText: 'Estimasi Gaji',
              errorText: errorTextEstimatedSalary,
            ),
            onChanged: context
                .read<CustomerPredictionCubit>()
                .changeEstimatedSalary,
          ),
        ),
      ],
    );
  }
}
