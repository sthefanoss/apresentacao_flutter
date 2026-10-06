import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation_theme.dart';
import 'slides_data.dart';

final _advanceKeys = {
  LogicalKeyboardKey.arrowRight,
  LogicalKeyboardKey.space,
  LogicalKeyboardKey.pageDown,
};

final _retreatKeys = {LogicalKeyboardKey.arrowLeft, LogicalKeyboardKey.pageUp};

/// The deck itself: a [PageView] over [slides] with swipe, on-screen button,
/// and keyboard navigation. Every navigation control and every slide carries
/// a stable key/semantic label so marionette can target and read them at
/// runtime the same way a presenter's hand or keyboard would.
class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final _controller = PageController();
  final _focusNode = FocusNode();
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _goToNext() {
    if (_currentIndex >= slides.length - 1) return;
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
  }

  void _goToPrevious() {
    if (_currentIndex <= 0) return;
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
  }

  void _handleKey(KeyEvent event) {
    if (event is! KeyDownEvent) return;

    if (_advanceKeys.contains(event.logicalKey)) {
      _goToNext();
    } else if (_retreatKeys.contains(event.logicalKey)) {
      _goToPrevious();
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      autofocus: true,
      onKeyEvent: _handleKey,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                key: const ValueKey('slide-page-view'),
                controller: _controller,
                itemCount: slides.length,
                onPageChanged: (index) =>
                    setState(() => _currentIndex = index),
                itemBuilder: (context, index) {
                  final slide = slides[index];
                  return Semantics(
                    label: 'slide-${slide.semanticId}',
                    child: KeyedSubtree(
                      key: ValueKey('slide-${slide.semanticId}'),
                      child: LayoutBuilder(
                        builder: (context, constraints) => SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: slide.builder(context),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            _NavigationBar(
              currentIndex: _currentIndex,
              total: slides.length,
              title: slides[_currentIndex].title,
              accentColor: slides[_currentIndex].accentColor,
              onPrevious: _goToPrevious,
              onNext: _goToNext,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    required this.currentIndex,
    required this.total,
    required this.title,
    required this.accentColor,
    required this.onPrevious,
    required this.onNext,
  });

  final int currentIndex;
  final int total;
  final String title;
  final Color accentColor;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PresentationSpacing.md,
        vertical: PresentationSpacing.sm,
      ),
      child: Row(
        children: [
          IconButton(
            key: const ValueKey('previous-slide-button'),
            tooltip: 'Slide anterior',
            onPressed: currentIndex == 0 ? null : onPrevious,
            icon: const Icon(Icons.arrow_back_ios_new),
            color: accentColor,
          ),
          Expanded(
            child: Semantics(
              label: 'current-slide-indicator',
              child: Text(
                'Slide ${currentIndex + 1} de $total  ·  $title',
                key: const ValueKey('current-slide-indicator'),
                textAlign: TextAlign.center,
                style: PresentationText.caption,
              ),
            ),
          ),
          IconButton(
            key: const ValueKey('next-slide-button'),
            tooltip: 'Próximo slide',
            onPressed: currentIndex == total - 1 ? null : onNext,
            icon: const Icon(Icons.arrow_forward_ios),
            color: accentColor,
          ),
        ],
      ),
    );
  }
}
