import 'slide.dart';
import 'slides/flutter_dart_slide.dart';
import 'slides/intro_slide.dart';
import 'slides/marionette_slide.dart';
import 'slides/qa_slide.dart';

/// Ordered deck for the talk. Add, remove, or reorder entries here —
/// this is the one place a live edit during the talk needs to touch.
final List<Slide> slides = [
  introSlide,
  flutterDartSlide,
  marionetteSlide,
  qaSlide,
];
