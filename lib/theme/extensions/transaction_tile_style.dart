import 'dart:ui';

import 'package:flutter/material.dart';

class TransactionTileStyle extends ThemeExtension<TransactionTileStyle> {
  const TransactionTileStyle({
    required this.backgroundColor,
    required this.borderRadius,
  });

  final Color backgroundColor;
  final double borderRadius;

  @override
  ThemeExtension<TransactionTileStyle> copyWith({
    Color? backgroundColor,
    double? borderRadius,
  }) {
    return TransactionTileStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  ThemeExtension<TransactionTileStyle> lerp(
      ThemeExtension<TransactionTileStyle>? other, double t) {
    if (other is! TransactionTileStyle) {
      return this;
    }

    return TransactionTileStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      borderRadius:
          lerpDouble(borderRadius, other.borderRadius, t) ?? borderRadius,
    );
  }
}

extension CardStyleX on BuildContext {
  TransactionTileStyle get transactionTileStyle =>
      Theme.of(this).extension<TransactionTileStyle>()!;
}
