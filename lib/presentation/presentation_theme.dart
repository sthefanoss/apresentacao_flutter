import 'package:flutter/material.dart';

/// Palette lifted from Wonderous (github.com/gskinnerTeam/flutter-wonderous-app):
/// a warm near-black/off-white pair instead of pure black/white, plus one
/// accent per slide instead of a single app-wide accent.
abstract final class PresentationColors {
  static const background = Color(0xFF1E1B18);
  static const surface = Color(0xFF272625);
  static const textPrimary = Color(0xFFF8ECE5);
  static const textSecondary = Color(0xFFBEABA1);

  static const introAccent = Color(0xFFE4935D);
  static const flutterDartAccent = Color(0xFF4FD1C5);
  static const flutterAdvancedAccent = Color(0xFF6C8EF5);
  static const marionetteAccent = Color(0xFFB18CFF);
  static const qaAccent = Color(0xFFEAC54F);
}

abstract final class PresentationSpacing {
  static const double sm = 12;
  static const double md = 24;
  static const double lg = 48;
  static const double xl = 80;
}

/// SpaceGrotesk (display/heading/body) + SpaceMono (eyebrow/caption labels),
/// echoing Wonderous's own serif-display + mono-label pairing.
abstract final class PresentationText {
  static const TextStyle display = TextStyle(
    fontFamily: 'SpaceGrotesk',
    fontSize: 56,
    fontWeight: FontWeight.w700,
    height: 1.1,
    color: PresentationColors.textPrimary,
  );

  static const TextStyle heading = TextStyle(
    fontFamily: 'SpaceGrotesk',
    fontSize: 34,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: PresentationColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'SpaceGrotesk',
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: PresentationColors.textPrimary,
  );

  static const TextStyle eyebrow = TextStyle(
    fontFamily: 'SpaceMono',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 4,
    height: 1.3,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'SpaceMono',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.3,
    color: PresentationColors.textSecondary,
  );
}

ThemeData buildPresentationTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: PresentationColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: PresentationColors.introAccent,
      brightness: Brightness.dark,
      surface: PresentationColors.background,
    ),
    fontFamily: 'SpaceGrotesk',
  );
}
