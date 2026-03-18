import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/domain/entities/hr_point_entity.dart';
import 'package:machine_learning_x_flutter/features/hr_salaries_predictor/presentation/cubit/cubit/hr_salaries_predictor_cubit.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_glass_theme.dart';

class ResultHrSalariesPredictor extends StatelessWidget {
  const ResultHrSalariesPredictor({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context
        .watch<HrSalariesPredictorCubit>()
        .state
        .hrSalariesEntity;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: data != null ? _Result() : const SizedBox(),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result();

  @override
  Widget build(BuildContext context) {
    final data = context
        .watch<HrSalariesPredictorCubit>()
        .state
        .hrSalariesEntity;
    final theme = Theme.of(context);
    final glass = Theme.of(context).extension<AppGlassTheme>()!;

    return Column(
      children: [
        Text(
          data?.hrPredictionEntity.formatted ?? '-',

          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: 34.0,
            color: glass.greenAccentColor,
          ),
        ),

        const SizedBox(height: 10),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: glass.blueAccentColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            data?.hrInsightEntitie.category ?? '-',
            style: theme.textTheme.bodyMedium,
          ),
        ),

        const SizedBox(height: 20),

        SizedBox(
          height: 300,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 11,

              minY: 0,
              maxY:
                  (data?.hrVisualization != null &&
                      (data?.hrVisualization.curve ?? []).isNotEmpty)
                  ? data!.hrVisualization.curve
                            .map((e) => e.y)
                            .reduce((a, b) => a > b ? a : b) *
                        1.2
                  : 1000000,
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (_) => FlLine(
                  color: theme.colorScheme.surface.withValues(
                    alpha: glass.backgroundAlpha,
                  ),
                  strokeWidth: 1,
                ),
                getDrawingVerticalLine: (_) => FlLine(
                  color: theme.colorScheme.surface.withValues(
                    alpha: glass.backgroundAlpha,
                  ),
                  strokeWidth: 1,
                ),
              ),
              titlesData: FlTitlesData(show: false),

              lineTouchData: LineTouchData(
                enabled: true,
                touchTooltipData: LineTouchTooltipData(
                  tooltipBorderRadius: BorderRadius.circular(16),
                  tooltipPadding: const EdgeInsets.all(12),
                  getTooltipItems: (spots) {
                    return spots.map((spot) {
                      String label;
                      Color color;

                      switch (spot.barIndex) {
                        case 0:
                          label = "Predicted";
                          color = glass.blueAccentColor;
                          break;
                        case 1:
                          label = "Actual";
                          color = glass.redAccentColor;
                          break;
                        case 2:
                          label = "Your Prediction";
                          color = glass.greenAccentColor;
                          break;
                        default:
                          label = "";
                          color = theme.colorScheme.surface;
                      }

                      return LineTooltipItem(
                        "$label\nLevel ${spot.x.toStringAsFixed(1)}\n${context.read<HrSalariesPredictorCubit>().formatUSD(spot.y)}",
                        TextStyle(color: color, fontWeight: FontWeight.bold),
                      );
                    }).toList();
                  },
                ),

                touchCallback: (event, response) {
                  if (response != null && response.lineBarSpots != null) {
                    final x = response.lineBarSpots!.first.x;
                    final y = response.lineBarSpots!.first.y;
                    context.read<HrSalariesPredictorCubit>().updateTouchedSpot(
                      data: HrPointEntity(x: x, y: y),
                    );
                  } else {
                    context.read<HrSalariesPredictorCubit>().updateTouchedSpot(
                      data: null,
                    );
                  }
                },
              ),

              lineBarsData: [
                LineChartBarData(
                  spots: context
                      .read<HrSalariesPredictorCubit>()
                      .listHrPointToListFlSpot(
                        list: data?.hrVisualization.curve ?? [],
                      ),
                  isCurved: true,
                  color: glass.blueAccentColor,
                  barWidth: 2,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, _, barData, __) {
                      final touchedSpot = context
                          .read<HrSalariesPredictorCubit>()
                          .state
                          .touchedSpot;
                      final isTouched =
                          touchedSpot?.x == spot.x && touchedSpot?.y == spot.y;

                      return FlDotCirclePainter(
                        radius: isTouched ? 8 : 4,
                        color: barData.color ?? theme.colorScheme.surface,
                        strokeWidth: isTouched ? 3 : 1,
                        strokeColor: theme.colorScheme.surface,
                      );
                    },
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        glass.blueAccentColor.withValues(alpha: 0.3),
                        glass.transparentColor,
                      ],
                    ),
                  ),
                ),

                LineChartBarData(
                  spots: context
                      .read<HrSalariesPredictorCubit>()
                      .listHrPointToListFlSpot(
                        list: data?.hrVisualization.realData ?? [],
                      ),
                  isCurved: false,
                  color: glass.redAccentColor,
                  barWidth: 0.0,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, _, __, ___) {
                      return FlDotCirclePainter(
                        radius: 3.5,
                        color: glass.redAccentColor,
                        strokeWidth: 1,
                        strokeColor: theme.colorScheme.surface,
                      );
                    },
                  ),
                ),

                if (data?.hrVisualization.userPoint != null)
                  LineChartBarData(
                    spots: context
                        .read<HrSalariesPredictorCubit>()
                        .listHrPointToListFlSpot(
                          list: [data!.hrVisualization.userPoint],
                        ),
                    isCurved: false,
                    color: glass.greenAccentColor,
                    barWidth: 0,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                        radius: 7,
                        color: glass.greenAccentColor,
                        strokeWidth: 3,
                        strokeColor: theme.colorScheme.surface,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Legend(color: glass.blueAccentColor, text: "Predicted"),
            const SizedBox(width: 16),
            _Legend(color: glass.redAccentColor, text: "Actual"),
            const SizedBox(width: 16),
            _Legend(color: glass.greenAccentColor, text: "You"),
          ],
        ),

        const SizedBox(height: 20),

        Text(
          data?.hrInsightEntitie.recommendation ?? '-',
          textAlign: TextAlign.center,
          style: TextStyle(color: glass.white70Color),
        ),
      ],
    );
  }
}

class _Legend extends StatelessWidget {
  final Color color;
  final String text;
  const _Legend({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(text, style: TextStyle(color: glass.white70Color)),
      ],
    );
  }
}
