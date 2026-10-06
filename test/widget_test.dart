import 'package:apresentacao_flutter/presentation/presentation_screen.dart';
import 'package:apresentacao_flutter/presentation/slides_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Text _currentSlideIndicator(WidgetTester tester) {
  return tester.widget<Text>(
    find.byKey(const ValueKey('current-slide-indicator')),
  );
}

void main() {
  group('PresentationScreen', () {
    testWidgets('opens on the first slide', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      expect(_currentSlideIndicator(tester).data, contains(slides.first.title));
    });

    testWidgets('advances to the next slide on a single tap', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      await tester.tap(find.byKey(const ValueKey('next-slide-button')));
      await tester.pumpAndSettle();

      expect(_currentSlideIndicator(tester).data, contains(slides[1].title));
    });

    testWidgets('returns to the previous slide on a single tap', (
      tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );
      await tester.tap(find.byKey(const ValueKey('next-slide-button')));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const ValueKey('previous-slide-button')));
      await tester.pumpAndSettle();

      expect(_currentSlideIndicator(tester).data, contains(slides[0].title));
    });

    testWidgets('advances exactly one slide per right-arrow key press', (
      tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pumpAndSettle();

      expect(_currentSlideIndicator(tester).data, contains(slides[1].title));
    });

    testWidgets('goes back exactly one slide per left-arrow key press', (
      tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowRight);
      await tester.pumpAndSettle();

      await tester.sendKeyEvent(LogicalKeyboardKey.arrowLeft);
      await tester.pumpAndSettle();

      expect(_currentSlideIndicator(tester).data, contains(slides[0].title));
    });

    testWidgets('disables the previous button on the first slide', (
      tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      final button = tester.widget<IconButton>(
        find.byKey(const ValueKey('previous-slide-button')),
      );

      expect(button.onPressed, isNull);
    });
  });
}
