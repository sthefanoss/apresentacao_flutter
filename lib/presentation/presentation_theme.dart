import 'package:flutter/material.dart';

/// Spacing and type scale shared by every slide, so rhythm stays consistent
/// without each slide inventing its own numbers.
abstract final class PresentationSpacing {
  static const double sm = 12;
  static const double md = 24;
  static const double lg = 48;
  static const double xl = 80;
}

abstract final class PresentationText {
  static const TextStyle display = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.w700,
    height: 1.1,
  );

  static const TextStyle heading = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static const TextStyle body = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.3,
    color: Colors.white70,
  );
}

ThemeData buildPresentationTheme() {
  const accent = Color(0xFF13B9FD);

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0D1117),
    colorScheme: ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.dark,
    ),
    fontFamily: 'Roboto',
  );
}
