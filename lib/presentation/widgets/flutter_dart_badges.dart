import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import 'corner_badge.dart';

/// The Flutter and Dart marks, badged side by side — reused by every slide
/// in the Flutter/Dart, advanced-Flutter, and Dart-language groups so the
/// icon pair always lands in the same corner as the intro photo.
class FlutterDartBadges extends StatelessWidget {
  const FlutterDartBadges({super.key, required this.accentColor});

  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CornerBadge(
          accentColor: accentColor,
          size: 64,
          child: const FlutterLogo(size: 34),
        ),
        const SizedBox(width: PresentationSpacing.sm),
        CornerBadge(
          accentColor: accentColor,
          size: 64,
          child: Image.asset(
            'assets/images/dart-logo.png',
            width: 34,
            height: 34,
          ),
        ),
      ],
    );
  }
}
