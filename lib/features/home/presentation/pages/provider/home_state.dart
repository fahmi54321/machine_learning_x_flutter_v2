import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/features/fashion/presentation/pages/fashion_predictor_page.dart';
import 'package:machine_learning_x_flutter/features/insurance/presentation/pages/insurance_page.dart';
import 'package:machine_learning_x_flutter/features/salaries/presentation/pages/salaries_page.dart';
import 'package:machine_learning_x_flutter/features/startup/presentation/pages/startup_page.dart';

class HomeState extends Equatable {
  final int currentIndex;
  final List<Widget> pages;
  const HomeState({required this.currentIndex, required this.pages});

  factory HomeState.initial() {
    return HomeState(
      currentIndex: 0,
      pages: [
        InsuranceWrapper(),
        SalariesPageWrapper(),
        StartupWrapper(),
        FashionPredictorWrapper(),
      ],
    );
  }

  HomeState copyWith({int? currentIndex, List<Widget>? pages}) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
      pages: pages ?? this.pages,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [currentIndex, pages];
}
