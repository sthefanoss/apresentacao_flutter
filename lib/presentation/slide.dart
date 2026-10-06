import 'package:flutter/material.dart';

/// One entry in the deck. [semanticId] is the stable handle marionette
/// (and keyboard/tap navigation) use to target this slide at runtime —
/// keep it even if the title or body copy changes.
class Slide {
  const Slide({
    required this.semanticId,
    required this.title,
    required this.builder,
  });

  final String semanticId;
  final String title;
  final WidgetBuilder builder;
}
