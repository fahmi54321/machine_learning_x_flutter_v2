import 'dart:convert';
import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DecisionBoundaryPoint {
  final double age;
  final double estimatedSalary;
  final double probability;

  DecisionBoundaryPoint({
    required this.age,
    required this.estimatedSalary,
    required this.probability,
  });

  factory DecisionBoundaryPoint.fromJson(Map<String, dynamic> json) {
    return DecisionBoundaryPoint(
      age: json['age'].toDouble(),
      estimatedSalary: json['estimated_salary'].toDouble(),
      probability: json['probability'].toDouble(),
    );
  }
}

class CustomerPoint {
  final double age;
  final double estimatedSalary;
  final int actualClass;
  final String pointColor;

  CustomerPoint({
    required this.age,
    required this.estimatedSalary,
    required this.actualClass,
    required this.pointColor,
  });

  factory CustomerPoint.fromJson(Map<String, dynamic> json) {
    return CustomerPoint(
      age: json['age'].toDouble(),
      estimatedSalary: json['estimated_salary'].toDouble(),
      actualClass: json['actual_class'],
      pointColor: json['point_color'],
    );
  }
}

class LogisticRegressionPage extends StatefulWidget {
  const LogisticRegressionPage({super.key});

  @override
  State<LogisticRegressionPage> createState() => _LogisticRegressionPageState();
}

class _LogisticRegressionPageState extends State<LogisticRegressionPage> {
  final ageController = TextEditingController();
  final salaryController = TextEditingController();

  bool loadingPrediction = false;
  bool loadingPlot = false;

  Map<String, dynamic>? prediction;

  List<CustomerPoint> customerPoints = [];
  List<DecisionBoundaryPoint> decisionBoundary = [];

  bool showChart = false;

  Future<void> getPlotData() async {
    setState(() {
      loadingPlot = true;
    });

    final response = await http.get(
      Uri.parse('http://10.0.2.2:5000/plot-data'),
    );

    final data = jsonDecode(response.body);

    customerPoints = (data['customer_points'] as List)
        .map((e) => CustomerPoint.fromJson(e))
        .toList();
    decisionBoundary = (data['decision_boundary'] as List)
        .map((e) => DecisionBoundaryPoint.fromJson(e))
        .toList();

    setState(() {
      loadingPlot = false;
      showChart = true;
    });
  }

  Future<void> predict() async {
    setState(() {
      loadingPrediction = true;
    });

    final response = await http.post(
      Uri.parse('http://10.0.2.2:5000/predict'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'age': double.parse(ageController.text),
        'estimated_salary': double.parse(salaryController.text),
      }),
    );

    prediction = jsonDecode(response.body);

    setState(() {
      loadingPrediction = false;
    });
  }

  Color getPointColor(String color) {
    if (color == 'dodgerblue') {
      return Colors.blue;
    }

    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F172A), Color(0xFF1E293B), Color(0xFF111827)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  width: 1000,
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),

                  child: Column(
                    children: [
                      const Text(
                        'Logistic Regression Predictor',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 30),

                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: ageController,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Age',
                                hintStyle: const TextStyle(
                                  color: Colors.white54,
                                ),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.05),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 20),

                          Expanded(
                            child: TextField(
                              controller: salaryController,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Estimated Salary',
                                hintStyle: const TextStyle(
                                  color: Colors.white54,
                                ),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.05),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: loadingPrediction ? null : predict,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: loadingPrediction
                              ? const CircularProgressIndicator()
                              : const Text('Predict Customer'),
                        ),
                      ),

                      const SizedBox(height: 30),

                      if (prediction != null)
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(28),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.white.withOpacity(0.06),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.08),
                            ),
                          ),

                          child: Column(
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: prediction!['prediction'] == 1
                                      ? Colors.greenAccent.withOpacity(0.15)
                                      : Colors.redAccent.withOpacity(0.15),
                                ),

                                child: Icon(
                                  prediction!['prediction'] == 1
                                      ? Icons.check_circle
                                      : Icons.cancel,
                                  size: 52,
                                  color: prediction!['prediction'] == 1
                                      ? Colors.greenAccent
                                      : Colors.redAccent,
                                ),
                              ),

                              const SizedBox(height: 24),

                              Text(
                                prediction!['label'],
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: prediction!['prediction'] == 1
                                      ? Colors.greenAccent
                                      : Colors.redAccent,
                                ),
                              ),

                              const SizedBox(height: 12),

                              Text(
                                prediction!['description'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),

                              const SizedBox(height: 28),

                              Row(
                                children: [
                                  Expanded(
                                    child: _InfoCard(
                                      title: "Age",
                                      value: prediction!['input']['age']
                                          .toString(),
                                      icon: Icons.person,
                                    ),
                                  ),

                                  const SizedBox(width: 16),

                                  Expanded(
                                    child: _InfoCard(
                                      title: "Salary",
                                      value:
                                          "\$${prediction!['input']['estimated_salary']}",
                                      icon: Icons.attach_money,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 24),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Buy Probability',
                                        style: TextStyle(color: Colors.white70),
                                      ),

                                      Text(
                                        "${(prediction!['probability']['buy_suv'] * 100).toStringAsFixed(2)}%",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 12),

                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      value:
                                          prediction!['probability']['buy_suv'],
                                      minHeight: 14,
                                      backgroundColor: Colors.white.withOpacity(
                                        0.08,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 30),

                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton.icon(
                                  onPressed: loadingPlot
                                      ? null
                                      : openVisualization,

                                  icon: loadingPlot
                                      ? const SizedBox(
                                          width: 18,
                                          height: 18,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        )
                                      : const Icon(Icons.analytics),

                                  label: Text(
                                    loadingPlot
                                        ? 'Loading Visualization...'
                                        : 'Show Visualization',
                                  ),

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

  Future<void> openVisualization() async {
    if (customerPoints.isEmpty) {
      await getPlotData();
    }

    if (!mounted) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,

      builder: (_) {
        return DraggableScrollableSheet(
          initialChildSize: 0.92,
          minChildSize: 0.7,
          maxChildSize: 0.98,

          builder: (context, controller) {
            return Container(
              decoration: const BoxDecoration(
                color: Color(0xFF0F172A),
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),

              child: Column(
                children: [
                  const SizedBox(height: 14),

                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),

                    child: Row(
                      children: [
                        Icon(Icons.analytics, color: Colors.white),

                        SizedBox(width: 12),

                        Text(
                          'AI Visualization',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
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
                            minX: 10,
                            maxX: 70,
                            minY: 0,
                            maxY: 160000,

                            gridData: const FlGridData(show: true),

                            borderData: FlBorderData(
                              show: true,
                              border: Border.all(color: Colors.white24),
                            ),

                            titlesData: const FlTitlesData(show: true),

                            scatterSpots: [
                              // CUSTOMER
                              ...customerPoints.map((e) {
                                return ScatterSpot(
                                  e.age,
                                  e.estimatedSalary,

                                  dotPainter: FlDotCirclePainter(
                                    radius: 5,
                                    color: e.actualClass == 1
                                        ? Colors.blue
                                        : Colors.redAccent,
                                  ),
                                );
                              }),

                              // DECISION BOUNDARY
                              ...decisionBoundary.map((e) {
                                return ScatterSpot(
                                  e.age,
                                  e.estimatedSalary,

                                  dotPainter: FlDotCirclePainter(
                                    radius: 2.5,
                                    color: Colors.cyanAccent,
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

                      children: const [
                        _Legend(color: Colors.redAccent, text: 'NOT BUY SUV'),

                        _Legend(color: Colors.blue, text: 'BUY SUV'),

                        _Legend(
                          color: Colors.cyanAccent,
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

class _Legend extends StatelessWidget {
  final Color color;
  final String text;

  const _Legend({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
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
        Text(text, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _InfoCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white.withOpacity(0.05),
      ),

      child: Column(
        children: [
          Icon(icon, color: Colors.blueAccent),

          const SizedBox(height: 10),

          Text(title, style: const TextStyle(color: Colors.white54)),

          const SizedBox(height: 6),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
