import 'package:flutter/material.dart';

import '../presentation_theme.dart';

/// A ringed circle in the slide's top-right corner — the photo on the
/// intro slide, the Flutter/Dart marks elsewhere. [SlideScaffold] positions
/// it; this widget only draws the ring and centers whatever is passed in.
class CornerBadge extends StatelessWidget {
  const CornerBadge({
    super.key,
    required this.accentColor,
    required this.child,
    this.size = 140,
  });

  final Color accentColor;
  final Widget child;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: PresentationColors.surface,
        border: Border.all(color: accentColor, width: 3),
      ),
      child: Center(child: child),
    );
  }
}
