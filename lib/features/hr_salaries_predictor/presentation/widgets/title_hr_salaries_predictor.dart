import 'package:flutter/material.dart';

class TitleHrSalariesPredictor extends StatelessWidget {
  const TitleHrSalariesPredictor({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text('HR Salary Predictor', style: theme.textTheme.titleLarge);
  }
}
