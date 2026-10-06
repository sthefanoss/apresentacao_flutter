import 'package:flutter/widgets.dart';

/// Hands each slide its own position in [slides] without the slide file
/// hardcoding a number — insert, remove, or reorder a slide in
/// slides_data.dart and every header stays correct.
class SlideIndexScope extends InheritedWidget {
  const SlideIndexScope({super.key, required this.index, required super.child});

  final int index;

  static int of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<SlideIndexScope>();
    assert(scope != null, 'SlideIndexScope.of() called with no SlideIndexScope ancestor');
    return scope!.index;
  }

  @override
  bool updateShouldNotify(SlideIndexScope oldWidget) => index != oldWidget.index;
}
