import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_cubit.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/widgets/bg_customer_prediction.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/widgets/btn_customer_prediction.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/widgets/input_customer_prediction.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/widgets/result_customer_prediction.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/widgets/title_customer_prediction.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_glass_theme.dart';

class CustomerPredictionWrapper extends StatelessWidget {
  const CustomerPredictionWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomerPredictionCubit(
        converterUsecase: sl(),
        customerPredictionUsecase: sl(),
        customerPredictionValidationUsecase: sl(),
        appState: sl(),
      ),
      child: CustomerPredictionPage(),
    );
  }
}

class CustomerPredictionPage extends StatelessWidget {
  const CustomerPredictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    final theme = Theme.of(context);
    return Scaffold(
      body: BgCustomerPrediction(
        child: Center(
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
                  width: 1000,
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
                      TitleCustomerPrediction(),

                      const SizedBox(height: 30),

                      InputCustomerPrediction(),

                      const SizedBox(height: 24),

                      BtnCustomerPrediction(),

                      const SizedBox(height: 30),
                      ResultCustomerPrediction(),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
