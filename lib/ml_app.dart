import 'package:flutter/material.dart';

import 'package:machine_learning_x_flutter/injection/injection.dart';
import 'package:machine_learning_x_flutter/core/app/app_navigator.dart';
import 'package:machine_learning_x_flutter/shared/listeners/global_ui_listener.dart';
import 'package:machine_learning_x_flutter/shared/ui/theme/app_theme.dart';
import 'package:machine_learning_x_flutter/shared/ui/widgets/keyboard/dismiss_keyboard.dart';
import 'package:machine_learning_x_flutter/features/home/presentation/pages/home_page.dart';

class MlApp extends StatelessWidget {
  final AppTheme appTheme;
  const MlApp({super.key, required this.appTheme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: appNavigatorKey,
      debugShowCheckedModeBanner: false,
      theme: appTheme.buildDark(),
      builder: (context, child) {
        return DismissKeyboard(
          child: GlobalUiListener(overlayService: sl(), child: child!),
        );
      },
      home: HomeWrapper(),
    );
  }
}
