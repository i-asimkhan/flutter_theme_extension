import 'package:flutter/material.dart';

enum ButtonType { deposit, withdraw, more }

extension ButtonExtension on ButtonType {
  IconData? get icon {
    switch (this) {
      case ButtonType.deposit:
        return Icons.arrow_downward_outlined;
      case ButtonType.withdraw:
        return Icons.arrow_upward_outlined;
      case ButtonType.more:
        return Icons.more_horiz_outlined;
      default:
        return null;
    }
  }
}
