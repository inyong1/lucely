import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle get titleBarTextStyle => const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  TextStyle get labelTextStyle => const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}
