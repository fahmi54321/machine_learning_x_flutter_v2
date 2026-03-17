import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';
import 'package:machine_learning_x_flutter/features/startup/presentation/pages/provider/startup_provider.dart';
import 'package:provider/provider.dart';

class ButtonStartup extends StatelessWidget {
  const ButtonStartup({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassPrimaryButton(
      text: 'Predict Profit',
      onTap: context.read<StartupProvider>().predict,
    );
  }
}
