import 'package:flutter/material.dart';

import 'corner_badge.dart';

/// The Dart mark alone, badged in the slide's corner — used by the Dart
/// language group, where pairing it with the Flutter mark would be
/// redundant.
class DartIconBadge extends StatelessWidget {
  const DartIconBadge({super.key, required this.accentColor});

  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return CornerBadge(
      accentColor: accentColor,
      child: Image.asset(
        'assets/images/dart-logo.png',
        width: 72,
        height: 72,
      ),
    );
  }
}
