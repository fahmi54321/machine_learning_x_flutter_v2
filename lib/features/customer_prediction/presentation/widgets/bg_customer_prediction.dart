import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_glass_theme.dart';

class BgCustomerPrediction extends StatelessWidget {
  final Widget child;
  const BgCustomerPrediction({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    return Container(
      decoration: BoxDecoration(gradient: glass.otherGradient),
      child: child,
    );
  }
}
