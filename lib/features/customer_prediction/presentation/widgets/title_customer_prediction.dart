import 'package:flutter/material.dart';

class TitleCustomerPrediction extends StatelessWidget {
  const TitleCustomerPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'Prediksi Perilaku Pelanggan',
      style: theme.textTheme.titleLarge?.copyWith(fontSize: 28.0),
      textAlign: TextAlign.center,
    );
  }
}
