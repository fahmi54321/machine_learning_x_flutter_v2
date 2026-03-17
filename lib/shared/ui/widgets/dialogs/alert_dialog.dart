import 'package:flutter/material.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/container/glass_container.dart';

class AlertDialogWidget extends StatelessWidget {
  final String message;
  final String okText;

  const AlertDialogWidget({
    super.key,
    required this.message,
    required this.okText,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      glowColor: Colors.orangeAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(okText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
