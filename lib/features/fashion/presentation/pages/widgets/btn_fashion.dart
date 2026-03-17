import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';
import 'package:machine_learning_x_flutter/features/fashion/presentation/pages/provider/fashion_predictor_provider.dart';
import 'package:provider/provider.dart';

class BtnFashion extends StatelessWidget {
  const BtnFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPrimaryButton(
      text: 'Generate Prediction',
      onTap: () {
        context.read<FashionPredictorProvider>().predict();
      },
    );
  }
}
