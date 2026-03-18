import 'package:flutter/material.dart';

enum ErrorSource {
  fashion,
  foodVision,
  home,
  insurance,
  salaries,
  startup,
  hrSalariesPredictor,
}

class UiError {
  final ErrorSource source;
  final String message;
  final VoidCallback? onRetry;

  UiError({required this.source, required this.message, this.onRetry});
}
