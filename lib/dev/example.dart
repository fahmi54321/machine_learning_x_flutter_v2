import 'dart:convert';
import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

/// ================= STATE =================
class ExampleState extends ChangeNotifier {
  bool isLoading = false;
  bool isPressed = false;

  final TextEditingController levelController = TextEditingController(
    text: '6.5',
  );

  String salaryFormatted = '';
  String category = '';
  String recommendation = '';

  List<FlSpot> curve = [];
  List<FlSpot> realData = [];
  FlSpot? userPoint;

  FlSpot? touchedSpot;

  void setPressed(bool v) {
    isPressed = v;
    notifyListeners();
  }

  double _getLevel() {
    return double.tryParse(levelController.text) ?? 1;
  }

  Future<void> predict() async {
    isLoading = true;
    notifyListeners();

    try {
      final level = _getLevel();

      final res = await http.post(
        Uri.parse('http://10.0.2.2:5000/predict'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"position_level": level}),
      );

      final json = jsonDecode(res.body);

      salaryFormatted = json['prediction']['formatted'];
      category = json['insight']['category'];
      recommendation = json['insight']['recommendation'];

      curve = (json['visualization']['curve'] as List)
          .map(
            (e) =>
                FlSpot((e['x'] as num).toDouble(), (e['y'] as num).toDouble()),
          )
          .toList();

      realData = (json['visualization']['real_data'] as List)
          .map(
            (e) =>
                FlSpot((e['x'] as num).toDouble(), (e['y'] as num).toDouble()),
          )
          .toList();

      userPoint = FlSpot(
        (json['visualization']['user_point']['x'] as num).toDouble(),
        (json['visualization']['user_point']['y'] as num).toDouble(),
      );
    } catch (e) {
      salaryFormatted = 'Error';
      recommendation = 'Failed to connect API';
    }

    isLoading = false;
    notifyListeners();
  }

  String formatUSD(double value) {
    return "\$${value.toStringAsFixed(0).replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (match) => ',')}";
  }
}

/// ================= PAGE =================
class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ExampleState(),
      child: Consumer<ExampleState>(
        builder: (context, state, _) {
          return Scaffold(
            body: Stack(
              children: [
                /// BACKGROUND
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff0f2027),
                        Color(0xff203a43),
                        Color(0xff2c5364),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: _glassContainer(
                      child: Column(
                        children: [
                          const Text(
                            'HR Salary Predictor',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(height: 24),

                          /// INPUT
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Position Level",
                                style: TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: state.levelController,
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "e.g. 6.5",
                                  hintStyle: const TextStyle(
                                    color: Colors.white38,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.05),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          /// BUTTON
                          GestureDetector(
                            onTapDown: (_) => state.setPressed(true),
                            onTapUp: (_) => state.setPressed(false),
                            onTapCancel: () => state.setPressed(false),
                            onTap: state.predict,
                            child: AnimatedScale(
                              scale: state.isPressed ? 0.95 : 1,
                              duration: const Duration(milliseconds: 150),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 36,
                                  vertical: 14,
                                ),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff00c6ff),
                                      Color(0xff0072ff),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Text(
                                  'Predict Salary',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          /// RESULT
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            child: state.isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : state.salaryFormatted.isNotEmpty
                                ? _result(state)
                                : const SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// ================= RESULT =================
  Widget _result(ExampleState state) {
    return Column(
      children: [
        Text(
          state.salaryFormatted,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),

        const SizedBox(height: 10),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            state.category,
            style: const TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 20),

        /// CHART
        SizedBox(
          height: 300,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 11, // lebih luas dari data (1–10)

              minY: 0,
              maxY: state.curve.isNotEmpty
                  ? state.curve
                            .map((e) => e.y)
                            .reduce((a, b) => a > b ? a : b) *
                        1.2
                  : 1000000,
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (_) => FlLine(
                  color: Colors.white.withOpacity(0.08),
                  strokeWidth: 1,
                ),
                getDrawingVerticalLine: (_) => FlLine(
                  color: Colors.white.withOpacity(0.08),
                  strokeWidth: 1,
                ),
              ),
              titlesData: FlTitlesData(show: false),

              lineTouchData: LineTouchData(
                enabled: true,
                touchTooltipData: LineTouchTooltipData(
                  tooltipBorderRadius: BorderRadius.circular(16),
                  tooltipPadding: const EdgeInsets.all(12),
                  // tooltipBackgroundColor: Colors.black.withOpacity(0.7),
                  getTooltipItems: (spots) {
                    return spots.map((spot) {
                      String label;
                      Color color;

                      switch (spot.barIndex) {
                        case 0:
                          label = "Predicted";
                          color = Colors.blueAccent;
                          break;
                        case 1:
                          label = "Actual";
                          color = Colors.redAccent;
                          break;
                        case 2:
                          label = "Your Prediction";
                          color = Colors.greenAccent;
                          break;
                        default:
                          label = "";
                          color = Colors.white;
                      }

                      return LineTooltipItem(
                        "$label\nLevel ${spot.x.toStringAsFixed(1)}\n${state.formatUSD(spot.y)}",
                        TextStyle(color: color, fontWeight: FontWeight.bold),
                      );
                    }).toList();
                  },
                ),

                touchCallback: (event, response) {
                  if (response != null && response.lineBarSpots != null) {
                    state.touchedSpot = response.lineBarSpots!.first;
                  } else {
                    state.touchedSpot = null;
                  }
                  state.notifyListeners();
                },
              ),

              lineBarsData: [
                /// PREDICTED
                LineChartBarData(
                  spots: state.curve,
                  isCurved: true,
                  color: Colors.blueAccent,
                  barWidth: 2,
                  dotData: _dot(state),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent.withOpacity(0.3),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),

                /// ACTUAL
                LineChartBarData(
                  spots: state.realData,
                  isCurved: false,
                  color: Colors.redAccent,
                  barWidth: 0.0,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, _, __, ___) {
                      return FlDotCirclePainter(
                        radius: 3.5, // 🔥 kecil biar gak numpuk
                        color: Colors.redAccent,
                        strokeWidth: 1,
                        strokeColor: Colors.white,
                      );
                    },
                  ),
                ),

                /// USER
                if (state.userPoint != null)
                  LineChartBarData(
                    spots: [state.userPoint!],
                    isCurved: false,
                    color: Colors.greenAccent,
                    barWidth: 0,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                        radius: 7,
                        color: Colors.greenAccent,
                        strokeWidth: 3,
                        strokeColor: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        /// LEGEND
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _legend(Colors.blueAccent, "Predicted"),
            const SizedBox(width: 16),
            _legend(Colors.redAccent, "Actual"),
            const SizedBox(width: 16),
            _legend(Colors.greenAccent, "You"),
          ],
        ),

        const SizedBox(height: 20),

        Text(
          state.recommendation,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white70),
        ),
      ],
    );
  }

  /// DOT STYLE
  FlDotData _dot(ExampleState state) {
    return FlDotData(
      show: true,
      getDotPainter: (spot, _, barData, __) {
        final isTouched =
            state.touchedSpot?.x == spot.x && state.touchedSpot?.y == spot.y;

        return FlDotCirclePainter(
          radius: isTouched ? 8 : 4,
          color: barData.color ?? Colors.white,
          strokeWidth: isTouched ? 3 : 1,
          strokeColor: Colors.white,
        );
      },
    );
  }

  /// LEGEND
  Widget _legend(Color color, String text) {
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
        Text(text, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }

  /// GLASS
  Widget _glassContainer({required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          width: 800,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white24),
          ),
          child: child,
        ),
      ),
    );
  }
}
