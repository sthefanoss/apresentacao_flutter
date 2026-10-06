import 'package:flutter/material.dart';

import '../presentation_theme.dart';

/// The small accent-colored label every slide opens with ("01 — QUEM SOU
/// EU"), shared so the eyebrow/rule/spacing stay identical across slides.
class SlideHeader extends StatelessWidget {
  const SlideHeader({
    super.key,
    required this.number,
    required this.eyebrow,
    required this.accentColor,
  });

  final int number;
  final String eyebrow;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    final numberLabel = number.toString().padLeft(2, '0');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 28,
          height: 2,
          color: accentColor,
        ),
        const SizedBox(width: PresentationSpacing.sm),
        Text(
          '$numberLabel — $eyebrow',
          style: PresentationText.eyebrow.copyWith(color: accentColor),
        ),
      ],
    );
  }
}
