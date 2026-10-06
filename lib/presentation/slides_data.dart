import 'slide.dart';
import 'slides/dart_lang/dart_language_slide.dart';
import 'slides/dart_lang/no_reflection_slide.dart';
import 'slides/flutter_advanced/build_context_slide.dart';
import 'slides/flutter_advanced/cross_platform_widgets_slide.dart';
import 'slides/flutter_advanced/cupertino_app_slide.dart';
import 'slides/flutter_advanced/custom_paint_slide.dart';
import 'slides/flutter_advanced/firebase_slide.dart';
import 'slides/flutter_advanced/hot_reload_vs_restart_slide.dart';
import 'slides/flutter_advanced/http_slide.dart';
import 'slides/flutter_advanced/local_ai_slide.dart';
import 'slides/flutter_advanced/material_app_slide.dart';
import 'slides/flutter_advanced/native_bridge_slide.dart';
import 'slides/flutter_advanced/persistence_slide.dart';
import 'slides/flutter_advanced/pub_dev_slide.dart';
import 'slides/flutter_advanced/stateful_widget_lifecycle_slide.dart';
import 'slides/flutter_advanced/stateful_widget_slide.dart';
import 'slides/flutter_advanced/stateless_widget_slide.dart';
import 'slides/flutter_advanced/testing_slide.dart';
import 'slides/flutter_dart/aot_jit_slide.dart';
import 'slides/flutter_dart/hot_reload_slide.dart';
import 'slides/flutter_dart/own_rendering_slide.dart';
import 'slides/flutter_dart/single_codebase_slide.dart';
import 'slides/intro_slide.dart';
import 'slides/marionette_slide.dart';
import 'slides/qa_slide.dart';

/// Ordered deck for the talk. Add, remove, or reorder entries here —
/// this is the one place a live edit during the talk needs to touch.
/// Header numbers are derived from position here (see SlideIndexScope),
/// so reordering never needs a follow-up edit elsewhere.
final List<Slide> slides = [
  introSlide,
  // Flutter & Dart — the basics, one topic per slide.
  singleCodebaseSlide,
  aotJitSlide,
  ownRenderingSlide,
  hotReloadSlide,
  // Flutter avançado.
  statelessWidgetSlide,
  statefulWidgetSlide,
  statefulWidgetLifecycleSlide,
  buildContextSlide,
  materialAppSlide,
  cupertinoAppSlide,
  crossPlatformWidgetsSlide,
  customPaintSlide,
  hotReloadVsRestartSlide,
  pubDevSlide,
  persistenceSlide,
  httpSlide,
  firebaseSlide,
  localAiSlide,
  nativeBridgeSlide,
  testingSlide,
  // Dart, em mais detalhe.
  dartLanguageSlide,
  noReflectionSlide,
  marionetteSlide,
  qaSlide,
];
