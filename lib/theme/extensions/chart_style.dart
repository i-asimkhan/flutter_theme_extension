import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class FLChartStyle extends ThemeExtension<FLChartStyle> {
  const FLChartStyle({
    required this.backgroundColor,
    required this.chartColor1,
    required this.chartColor2,
    required this.chartColor3,
    required this.chartBorderColor,
    required this.toolTipBgColor,
    required this.isShowingMainData,
    required this.animationDuration,
    required this.minX,
    required this.maxX,
    required this.maxY,
    required this.minY,
    required this.borderRadius,
  });

  final Color backgroundColor;
  final Color chartColor1;
  final Color chartColor2;
  final Color chartColor3;
  final Color chartBorderColor;
  final Color toolTipBgColor;

  final bool isShowingMainData;

  final double minX;
  final double maxX;
  final double maxY;
  final double minY;
  final double borderRadius;

  final Duration animationDuration;

  @override
  ThemeExtension<FLChartStyle> copyWith({
    Color? backgroundColor,
    Color? chartColor1,
    Color? chartColor2,
    Color? chartColor3,
    Color? chartBorderColor,
    Color? toolTipBgColor,
    bool? isShowingMainData,
    double? minX,
    double? maxX,
    double? maxY,
    double? minY,
    double? borderRadius,
    Duration? animationDuration,
  }) {
    return FLChartStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      chartColor1: chartColor1 ?? this.chartColor1,
      chartColor2: chartColor2 ?? this.chartColor2,
      chartColor3: chartColor3 ?? this.chartColor3,
      chartBorderColor: chartBorderColor ?? this.chartBorderColor,
      toolTipBgColor: toolTipBgColor ?? this.toolTipBgColor,
      isShowingMainData: isShowingMainData ?? this.isShowingMainData,
      minX: minX ?? this.minX,
      maxX: maxX ?? this.maxX,
      maxY: maxY ?? this.maxY,
      minY: minY ?? this.minY,
      borderRadius: borderRadius ?? this.borderRadius,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }

  @override
  ThemeExtension<FLChartStyle> lerp(
      ThemeExtension<FLChartStyle>? other, double t) {
    if (other is! FLChartStyle) {
      return this;
    }

    return FLChartStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      chartColor1: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      chartColor2: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      chartColor3: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      chartBorderColor: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      toolTipBgColor: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      isShowingMainData: (lerpDouble(isShowingMainData.boolToInt,
                  other.isShowingMainData.boolToInt, t) ??
              isShowingMainData.boolToInt) ==
          1,
      minX: lerpDouble(minX, other.minX, minX) ?? minX,
      maxX: lerpDouble(maxX, other.maxX, t) ?? maxX,
      minY: lerpDouble(minY, other.minY, t) ?? minY,
      maxY: lerpDouble(maxY, other.maxY, t) ?? maxY,
      borderRadius:
          lerpDouble(borderRadius, other.borderRadius, t) ?? borderRadius,
      animationDuration:
          lerpDuration(animationDuration, other.animationDuration, t),
    );
  }
}

extension CardStyleX on BuildContext {
  FLChartStyle get flChartStyle => Theme.of(this).extension<FLChartStyle>()!;
}

extension BoolExt on bool {
  int get boolToInt => this ? 1 : 0;
}

extension IntExt on int {
  bool get intToBool => this == 0 ? false : true;
}
