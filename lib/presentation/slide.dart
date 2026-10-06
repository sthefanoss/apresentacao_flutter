import 'package:flutter/material.dart';

/// One entry in the deck. [semanticId] is the stable handle marionette
/// (and keyboard/tap navigation) use to target this slide at runtime —
/// keep it even if the title or body copy changes. [accentColor] mirrors
/// Wonderous's per-wonder accent shift: each slide gets its own hue.
class Slide {
  const Slide({
    required this.semanticId,
    required this.eyebrow,
    required this.title,
    required this.accentColor,
    required this.builder,
  });

  final String semanticId;
  final String eyebrow;
  final String title;
  final Color accentColor;
  final WidgetBuilder builder;
}
