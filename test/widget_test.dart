import 'package:apresentacao_flutter/presentation/presentation_screen.dart';
import 'package:apresentacao_flutter/presentation/slides_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PresentationScreen', () {
    testWidgets('opens on the first slide', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      final indicator = tester.widget<Text>(
        find.byKey(const ValueKey('current-slide-indicator')),
      );

      expect(indicator.data, contains(slides.first.title));
    });

    testWidgets('advances to the next slide on tap', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: PresentationScreen()),
      );

      await tester.tap(find.byKey(const ValueKey('next-slide-button')));
      await tester.pumpAndSettle();

      final indicator = tester.widget<Text>(
        find.byKey(const ValueKey('current-slide-indicator')),
      );
      expect(indicator.data, contains(slides[1].title));
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
