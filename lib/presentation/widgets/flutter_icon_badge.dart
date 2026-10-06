import 'package:flutter/material.dart';

import 'corner_badge.dart';

/// The Flutter mark alone, badged in the slide's corner — used by the
/// "Flutter avançado" group, where pairing it with the Dart mark would be
/// redundant.
class FlutterIconBadge extends StatelessWidget {
  const FlutterIconBadge({super.key, required this.accentColor});

  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return CornerBadge(
      accentColor: accentColor,
      child: const FlutterLogo(size: 72),
    );
  }
}
