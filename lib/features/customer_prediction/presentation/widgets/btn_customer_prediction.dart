import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_cubit.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';

class BtnCustomerPrediction extends StatelessWidget {
  const BtnCustomerPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPrimaryButton(
      text: 'Prediksi Pelanggan',
      onTap: context.read<CustomerPredictionCubit>().predict,
    );
  }
}
