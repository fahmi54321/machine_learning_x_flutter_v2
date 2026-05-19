import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_learning_x_flutter/features/converter/domain/usecases/converter_usecase.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/domain/entities/plot_data_entity.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_cubit.dart';
import 'package:machine_learning_x_flutter/features/customer_prediction/presentation/cubit/customer_prediction_state.dart';
import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_glass_theme.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/button/glass_primary_button.dart';

class ResultCustomerPrediction extends StatefulWidget {
  const ResultCustomerPrediction({super.key});

  @override
  State<ResultCustomerPrediction> createState() =>
      _ResultCustomerPredictionState();
}

class _ResultCustomerPredictionState extends State<ResultCustomerPrediction> {
  final ConverterUsecase converterUsecase = sl();

  bool _isNavigate = false;

  void updateIsNavigate(bool val) {
    _isNavigate = val;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    final theme = Theme.of(context);
    final prediction = context
        .watch<CustomerPredictionCubit>()
        .state
        .customerPredictionEntity;
    final plotData = context
        .watch<CustomerPredictionCubit>()
        .state
        .plotDataEntity;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (context.read<CustomerPredictionCubit>().state.plotDataStatus ==
          PlotDataStatus.success) {
        if (!_isNavigate) {
          updateIsNavigate(true);

          openVisualization(plotData: plotData, context: context);

          updateIsNavigate(false);

          context.read<CustomerPredictionCubit>().resetPlotStatus();
        }
      }
    });
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 700),
      child: prediction != null
          ? Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: theme.colorScheme.surface.withValues(
                  alpha: glass.backgroundAlpha,
                ),
                border: Border.all(color: theme.colorScheme.outline),
              ),

              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: prediction.prediction == 1
                          ? glass.greenAccentColor.withValues(alpha: 0.15)
                          : glass.redAccentColor.withValues(alpha: 0.15),
                    ),

                    child: Icon(
                      prediction.prediction == 1
                          ? Icons.check_circle
                          : Icons.cancel,
                      size: 42,
                      color: prediction.prediction == 1
                          ? glass.greenAccentColor
                          : glass.redAccentColor,
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    prediction.prediction == 1
                        ? 'Pelanggan Berpotensi Membeli Mobil Terbaru'
                        : 'Pelanggan Kemungkinan Tidak Membeli Mobil Terbaru',

                    textAlign: TextAlign.center,

                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                      fontSize: 18.0,
                      color: prediction.prediction == 1
                          ? glass.greenAccentColor
                          : glass.redAccentColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    prediction.prediction == 1
                        ? 'Model mendeteksi potensi pembelian Mobil terbaru cukup tinggi berdasarkan pola usia dan estimasi pendapatan pelanggan.'
                        : 'Model mendeteksi kemungkinan pembelian Mobil terbaru cukup rendah berdasarkan pola usia dan estimasi pendapatan pelanggan.',

                    textAlign: TextAlign.center,

                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: glass.white70Color,
                      height: 1.6,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 28),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: theme.colorScheme.surface.withValues(alpha: 0.04),
                      border: Border.all(color: theme.colorScheme.outline),
                    ),

                    child: Row(
                      children: [
                        Expanded(
                          child: _InsightItem(
                            icon: Icons.person_rounded,
                            title: 'Usia Pelanggan',
                            value:
                                '${converterUsecase.doubleToString(value: prediction.inputEntity.age)} Tahun',
                          ),
                        ),

                        const SizedBox(width: 4.0),

                        Container(
                          width: 1,
                          height: 60,
                          color: glass.whiteColor.withValues(alpha: 0.08),
                        ),
                        const SizedBox(width: 4.0),

                        Expanded(
                          child: _InsightItem(
                            icon: Icons.payments_rounded,
                            title: 'Estimasi Pendapatan',
                            value: converterUsecase.currencyFormatted(
                              value: prediction.inputEntity.estimatedSalary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  Row(
                    children: [
                      Expanded(
                        child: _ProbabilityCard(
                          title: 'Potensi Membeli',
                          probability: prediction.probability.buySuv,
                          color: glass.greenAccentColor,
                          icon: Icons.trending_up_rounded,
                        ),
                      ),

                      const SizedBox(width: 16),

                      Expanded(
                        child: _ProbabilityCard(
                          title: 'Potensi Tidak Membeli',
                          probability: prediction.probability.notBuySuv,
                          color: glass.redAccentColor,
                          icon: Icons.trending_down_rounded,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                  GlassPrimaryButton(
                    text: 'Show Visualization',

                    onTap: context.read<CustomerPredictionCubit>().plotData,
                  ),
                ],
              ),
            )
          : Container(),
    );
  }

  Future<void> openVisualization({
    required PlotDataEntity? plotData,
    required BuildContext context,
  }) async {
    if (!context.mounted) return;

    final glass = Theme.of(context).extension<AppGlassTheme>()!;
    final theme = Theme.of(context);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: glass.transparentColor,

      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.92,
          minChildSize: 0.7,
          maxChildSize: 0.98,

          builder: (context, controller) {
            return Container(
              decoration: BoxDecoration(
                color: glass.plotCustomerColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),

              child: Column(
                children: [
                  const SizedBox(height: 14),

                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                      color: glass.white24Color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),

                    child: Row(
                      children: [
                        Icon(Icons.analytics, color: glass.whiteColor),

                        SizedBox(width: 12),

                        Text(
                          'Visualisasi Prediction',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: InteractiveViewer(
                      maxScale: 5,

                      child: Padding(
                        padding: const EdgeInsets.all(24),

                        child: ScatterChart(
                          ScatterChartData(
                            minX: 8,
                            maxX: 72,
                            minY: -5000,
                            maxY: 165000,

                            gridData: const FlGridData(show: true),

                            borderData: FlBorderData(
                              show: true,
                              border: Border.all(color: glass.white24Color),
                            ),

                            titlesData: const FlTitlesData(show: true),

                            scatterSpots: [
                              // =========================
                              // BACKGROUND REGIONS
                              // =========================
                              ...(plotData?.predictionRegions ?? []).map((e) {
                                return ScatterSpot(
                                  e.age,
                                  e.estimatedSalary,

                                  dotPainter: FlDotCirclePainter(
                                    // kecil agar seperti pixel contour
                                    radius: 1.2,

                                    color: e.prediction == 1
                                        ? glass.blueColor.withOpacity(0.50)
                                        : glass.redAccentColor.withOpacity(
                                            0.50,
                                          ),
                                  ),
                                );
                              }),

                              // =========================
                              // CUSTOMER POINTS
                              // =========================
                              ...(plotData?.customerPoints ?? []).map((e) {
                                return ScatterSpot(
                                  e.age,
                                  e.estimatedSalary,

                                  dotPainter: FlDotCirclePainter(
                                    radius: 5,

                                    color: e.actualClass == 1
                                        ? glass.blueColor
                                        : glass.redAccentColor,
                                  ),
                                );
                              }),

                              // =========================
                              // DECISION BOUNDARY
                              // =========================
                              ...(plotData?.decisionBoundary ?? []).map((e) {
                                return ScatterSpot(
                                  e.age,
                                  e.estimatedSalary,

                                  dotPainter: FlDotCirclePainter(
                                    radius: 2.5,
                                    color: glass.greenAccentColor,
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(24),

                    child: Wrap(
                      spacing: 20,
                      runSpacing: 12,

                      alignment: WrapAlignment.center,

                      children: [
                        _Legend(
                          color: glass.redAccentColor,
                          text: 'Tidak Membeli Mobil Baru',
                        ),

                        _Legend(
                          color: glass.blueColor,
                          text: 'Membeli Mobil Baru',
                        ),

                        _Legend(
                          color: glass.greenAccentColor,
                          text: 'Decision Boundary',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _InsightItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InsightItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;

    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: 44,
          height: 44,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: glass.blueColor.withValues(alpha: 0.12),
          ),

          child: Icon(icon, color: glass.blueColor),
        ),

        const SizedBox(height: 12),

        Text(
          title,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(color: glass.white70Color),
        ),

        const SizedBox(height: 8),

        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: glass.whiteColor,
          ),
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
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Text(text, style: theme.textTheme.labelMedium),
      ],
    );
  }
}

class _ProbabilityCard extends StatefulWidget {
  final String title;
  final double probability;
  final Color color;
  final IconData icon;

  const _ProbabilityCard({
    required this.title,
    required this.probability,
    required this.color,
    required this.icon,
  });

  @override
  State<_ProbabilityCard> createState() => _ProbabilityCardState();
}

class _ProbabilityCardState extends State<_ProbabilityCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      lowerBound: 0.95,
      upperBound: 1.02,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final glass = Theme.of(context).extension<AppGlassTheme>()!;

    final theme = Theme.of(context);

    return ScaleTransition(
      scale: controller,

      child: Container(
        height: 200.0,
        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),

          gradient: LinearGradient(
            colors: [
              widget.color.withValues(alpha: 0.25),
              widget.color.withValues(alpha: 0.08),
            ],
          ),

          border: Border.all(color: widget.color.withValues(alpha: 0.35)),
        ),

        child: Column(
          children: [
            Container(
              width: 54,
              height: 54,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color.withValues(alpha: 0.16),
              ),

              child: Icon(widget.icon, color: widget.color),
            ),

            const SizedBox(height: 18),

            Expanded(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,

                style: theme.textTheme.bodyMedium?.copyWith(
                  color: glass.white70Color,
                ),
              ),
            ),

            const SizedBox(height: 14),

            Text(
              '${(widget.probability * 100).toStringAsFixed(0)}%',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: widget.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
