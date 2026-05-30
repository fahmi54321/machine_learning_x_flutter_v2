// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class AppGlassTheme extends ThemeExtension<AppGlassTheme> {
  final double blur;
  final double sigmaX;
  final double sigmaY;
  final double radius;
  final double backgroundAlpha;
  final double imageAlpha;
  final double borderAlpha;
  final double glowAlpha;
  final double shadowAlpha;
  final Gradient primaryGradient;
  final Gradient secondaryGradient;
  final Gradient otherGradient;
  final Gradient customerPredictionGradient;
  final Gradient bgImageGradient;
  final Color riskLowColor;
  final Color riskMediumColor;
  final Color riskHighColor;
  final Color descriptionTextColor;
  final Color classificationTextColor;
  final Color badResultColor;
  final Color goodResultColor;
  final Color white38Color;
  final Color white54Color;
  final Color bgImageColor;
  final Color transparentColor;
  final Color greenAccentColor;
  final Color blueAccentColor;
  final Color redAccentColor;

  final Color white70Color;
  final Color blueColor;
  final Color whiteColor;
  final Color plotCustomerColor;
  final Color white24Color;
  final Color yellowColor;
  final Color orangeColor;
  final Color purpleColor;

  const AppGlassTheme({
    required this.blur,
    required this.sigmaX,
    required this.sigmaY,
    required this.radius,
    required this.backgroundAlpha,
    required this.imageAlpha,
    required this.borderAlpha,
    required this.glowAlpha,
    required this.shadowAlpha,
    required this.primaryGradient,
    required this.secondaryGradient,
    required this.otherGradient,
    required this.customerPredictionGradient,
    required this.bgImageGradient,
    required this.riskLowColor,
    required this.riskMediumColor,
    required this.riskHighColor,
    required this.descriptionTextColor,
    required this.classificationTextColor,
    required this.badResultColor,
    required this.goodResultColor,
    required this.white38Color,
    required this.white54Color,
    required this.bgImageColor,
    required this.transparentColor,
    required this.greenAccentColor,
    required this.blueAccentColor,
    required this.redAccentColor,
    required this.white70Color,
    required this.blueColor,
    required this.whiteColor,
    required this.plotCustomerColor,
    required this.white24Color,
    required this.yellowColor,
    required this.orangeColor,
    required this.purpleColor,
  });

  @override
  AppGlassTheme copyWith({
    double? blur,
    double? sigmaX,
    double? sigmaY,
    double? radius,
    double? backgroundAlpha,
    double? imageAlpha,
    double? borderAlpha,
    double? glowAlpha,
    double? shadowAlpha,
    Gradient? primaryGradient,
    Gradient? secondaryGradient,
    Gradient? otherGradient,
    Gradient? customerPredictionGradient,
    Gradient? bgImageGradient,
    Color? riskLowColor,
    Color? riskMediumColor,
    Color? riskHighColor,
    Color? descriptionTextColor,
    Color? classificationTextColor,
    Color? badResultColor,
    Color? goodResultColor,
    Color? white38Color,
    Color? white54Color,
    Color? bgImageColor,
    Color? transparentColor,
    Color? greenAccentColor,
    Color? blueAccentColor,
    Color? redAccentColor,
    Color? white70Color,
    Color? blueColor,
    Color? whiteColor,
    Color? plotCustomerColor,
    Color? white24Color,
    Color? yellowColor,
    Color? orangeColor,
    Color? purpleColor,
  }) {
    return AppGlassTheme(
      blur: blur ?? this.blur,
      sigmaX: sigmaX ?? this.sigmaX,
      sigmaY: sigmaY ?? this.sigmaY,
      radius: radius ?? this.radius,
      backgroundAlpha: backgroundAlpha ?? this.backgroundAlpha,
      imageAlpha: imageAlpha ?? this.imageAlpha,
      borderAlpha: borderAlpha ?? this.borderAlpha,
      glowAlpha: glowAlpha ?? this.glowAlpha,
      shadowAlpha: shadowAlpha ?? this.shadowAlpha,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      secondaryGradient: secondaryGradient ?? this.secondaryGradient,
      otherGradient: otherGradient ?? this.otherGradient,
      customerPredictionGradient:
          customerPredictionGradient ?? this.customerPredictionGradient,
      bgImageGradient: bgImageGradient ?? this.bgImageGradient,
      riskLowColor: riskLowColor ?? this.riskLowColor,
      riskMediumColor: riskMediumColor ?? this.riskMediumColor,
      riskHighColor: riskHighColor ?? this.riskHighColor,
      descriptionTextColor: descriptionTextColor ?? this.descriptionTextColor,
      classificationTextColor:
          classificationTextColor ?? this.classificationTextColor,
      badResultColor: badResultColor ?? this.badResultColor,
      goodResultColor: goodResultColor ?? this.goodResultColor,
      white38Color: white38Color ?? this.white38Color,
      white54Color: white54Color ?? this.white54Color,
      bgImageColor: bgImageColor ?? this.bgImageColor,
      transparentColor: transparentColor ?? this.transparentColor,
      greenAccentColor: greenAccentColor ?? this.greenAccentColor,
      blueAccentColor: blueAccentColor ?? this.blueAccentColor,
      redAccentColor: redAccentColor ?? this.redAccentColor,
      white70Color: white70Color ?? this.white70Color,
      blueColor: blueColor ?? this.blueColor,
      whiteColor: whiteColor ?? this.whiteColor,
      plotCustomerColor: plotCustomerColor ?? this.plotCustomerColor,
      white24Color: white24Color ?? this.white24Color,
      yellowColor: yellowColor ?? this.yellowColor,
      orangeColor: orangeColor ?? this.orangeColor,
      purpleColor: purpleColor ?? this.purpleColor,
    );
  }

  @override
  AppGlassTheme lerp(ThemeExtension<AppGlassTheme>? other, double t) {
    if (other is! AppGlassTheme) return this;

    return AppGlassTheme(
      blur: lerpDouble(blur, other.blur, t)!,
      radius: lerpDouble(radius, other.radius, t)!,
      backgroundAlpha: lerpDouble(backgroundAlpha, other.backgroundAlpha, t)!,
      imageAlpha: lerpDouble(imageAlpha, other.imageAlpha, t)!,
      borderAlpha: lerpDouble(borderAlpha, other.borderAlpha, t)!,
      glowAlpha: lerpDouble(glowAlpha, other.glowAlpha, t)!,
      shadowAlpha: lerpDouble(shadowAlpha, other.shadowAlpha, t)!,
      sigmaX: lerpDouble(sigmaX, other.sigmaX, t)!,
      sigmaY: lerpDouble(sigmaY, other.sigmaY, t)!,
      primaryGradient: Gradient.lerp(
        primaryGradient,
        other.primaryGradient,
        t,
      )!,
      riskLowColor: Color.lerp(riskLowColor, other.riskLowColor, t)!,
      riskMediumColor: Color.lerp(riskMediumColor, other.riskMediumColor, t)!,
      riskHighColor: Color.lerp(riskHighColor, other.riskHighColor, t)!,
      descriptionTextColor: Color.lerp(
        descriptionTextColor,
        other.descriptionTextColor,
        t,
      )!,
      classificationTextColor: Color.lerp(
        classificationTextColor,
        other.classificationTextColor,
        t,
      )!,
      goodResultColor: Color.lerp(goodResultColor, other.goodResultColor, t)!,
      badResultColor: Color.lerp(badResultColor, other.badResultColor, t)!,
      white38Color: Color.lerp(white38Color, other.white38Color, t)!,
      white54Color: Color.lerp(white54Color, other.white54Color, t)!,
      bgImageColor: Color.lerp(bgImageColor, other.bgImageColor, t)!,
      transparentColor: Color.lerp(
        transparentColor,
        other.transparentColor,
        t,
      )!,
      secondaryGradient: Gradient.lerp(
        secondaryGradient,
        other.secondaryGradient,
        t,
      )!,
      otherGradient: Gradient.lerp(otherGradient, other.otherGradient, t)!,
      customerPredictionGradient: Gradient.lerp(
        customerPredictionGradient,
        other.customerPredictionGradient,
        t,
      )!,
      bgImageGradient: Gradient.lerp(
        bgImageGradient,
        other.bgImageGradient,
        t,
      )!,
      greenAccentColor: Color.lerp(
        greenAccentColor,
        other.greenAccentColor,
        t,
      )!,
      blueAccentColor: Color.lerp(blueAccentColor, other.blueAccentColor, t)!,
      redAccentColor: Color.lerp(redAccentColor, other.redAccentColor, t)!,
      white70Color: Color.lerp(white70Color, other.white70Color, t)!,
      blueColor: Color.lerp(blueColor, other.blueColor, t)!,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      plotCustomerColor: Color.lerp(
        plotCustomerColor,
        other.plotCustomerColor,
        t,
      )!,
      white24Color: Color.lerp(white24Color, other.white24Color, t)!,
      yellowColor: Color.lerp(yellowColor, other.yellowColor, t)!,
      orangeColor: Color.lerp(orangeColor, other.orangeColor, t)!,
      purpleColor: Color.lerp(purpleColor, other.purpleColor, t)!,
    );
  }
}
