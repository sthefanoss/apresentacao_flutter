import 'package:flutter/material.dart';

import '../presentation_theme.dart';

/// A faint accent-colored glow in the top-right corner, standing in for
/// Wonderous's full-bleed photography without needing image assets.
class SlideBackdrop extends StatelessWidget {
  const SlideBackdrop({super.key, required this.accentColor, required this.child});

  final Color accentColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topRight,
          radius: 1.2,
          colors: [
            accentColor.withValues(alpha: 0.16),
            PresentationColors.background,
          ],
        ),
      ),
      child: child,
    );
  }
}
