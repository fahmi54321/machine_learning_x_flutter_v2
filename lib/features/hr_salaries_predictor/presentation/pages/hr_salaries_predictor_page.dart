import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/cubit/cubit/hr_salaries_predictor_cubit.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/widgets/bg_hr_salaries_predictor.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/widgets/button_hr_salaries_predictor.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/widgets/input_hr_salaries_predictor.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/widgets/result_hr_salaries_predictor.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/widgets/title_hr_salaries_predictor.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_glass_theme.dart';

class HrSalariesPredictorWrapper extends StatelessWidget {
  const HrSalariesPredictorWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HrSalariesPredictorCubit(
        converterUsecase: sl(),
        hrSalariesPredictorUsecase: sl(),
        hrSalariesPredictorValidationUsecase: sl(),
        appState: sl(),
      ),
      child: HRSalariesPredictorPage(),
    );
  }
}

class HRSalariesPredictorPage extends StatelessWidget {
  const HRSalariesPredictorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          BgHrSalariesPredictor(),

          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: glass.sigmaX,
                    sigmaY: glass.sigmaY,
                  ),
                  child: Container(
                    width: 800,
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface.withValues(
                        alpha: glass.backgroundAlpha,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: theme.colorScheme.outline),
                    ),
                    child: Column(
                      children: [
                        TitleHrSalariesPredictor(),

                        const SizedBox(height: 24),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Position Level",
                              style: TextStyle(color: Colors.white70),
                            ),
                            const SizedBox(height: 8),
                            InputHrSalariesPredictor(),
                          ],
                        ),

                        const SizedBox(height: 20),

                        ButtonHrSalariesPredictor(),

                        const SizedBox(height: 30),

                        ResultHrSalariesPredictor(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
