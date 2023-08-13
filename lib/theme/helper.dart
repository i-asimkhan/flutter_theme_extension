import 'package:flutter/material.dart';

extension ColorExt on Color {
  OutlineInputBorder get getOutlineBorder => OutlineInputBorder(
        borderSide: BorderSide(color: this, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );
}
