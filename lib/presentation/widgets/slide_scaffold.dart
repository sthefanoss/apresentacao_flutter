import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide_index_scope.dart';
import 'slide_backdrop.dart';
import 'slide_header.dart';

/// Shared slide frame: backdrop, header pinned to the top (not centered —
/// that's what made header position drift between slides of different
/// content length), optional title/subtitle, body content, and an optional
/// corner visual (photo or icon badges) in the same spot on every slide.
class SlideScaffold extends StatelessWidget {
  const SlideScaffold({
    super.key,
    required this.eyebrow,
    required this.title,
    required this.accentColor,
    required this.body,
    this.subtitle,
    this.cornerVisual,
  });

  final String eyebrow;
  final String title;
  final Color accentColor;
  final Widget body;
  final String? subtitle;
  final Widget? cornerVisual;

  @override
  Widget build(BuildContext context) {
    final number = SlideIndexScope.of(context) + 1;

    return SlideBackdrop(
      accentColor: accentColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(PresentationSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideHeader(number: number, eyebrow: eyebrow, accentColor: accentColor),
                const SizedBox(height: PresentationSpacing.md),
                Text(title, style: PresentationText.display),
                if (subtitle != null) ...[
                  const SizedBox(height: PresentationSpacing.sm),
                  Text(subtitle!, style: PresentationText.heading),
                ],
                const SizedBox(height: PresentationSpacing.lg),
                body,
              ],
            ),
          ),
          if (cornerVisual != null)
            Positioned(
              top: PresentationSpacing.xl,
              right: PresentationSpacing.xl,
              child: cornerVisual!,
            ),
        ],
      ),
    );
  }
}
