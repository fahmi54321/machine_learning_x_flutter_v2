import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';
import 'package:machine_learning_x_flutter/features/food_vision/presentation/pages/provider/food_vision_provider.dart';
import 'package:provider/provider.dart';

class BtnFood extends StatelessWidget {
  const BtnFood({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPrimaryButton(
      text: 'Generate Prediction',
      onTap: () {
        context.read<FoodVisionProvider>().predict();
      },
    );
  }
}
