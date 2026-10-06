import 'package:flutter/material.dart';

import '../presentation_theme.dart';

const _dartKeywords = {
  'abstract', 'async', 'await', 'class', 'const', 'enum', 'extends', 'factory',
  'final', 'get', 'implements', 'import', 'late', 'mixin', 'new', 'required',
  'return', 'set', 'static', 'super', 'this', 'typedef', 'var', 'void', 'with',
  'if', 'else', 'for', 'while', 'is', 'in', 'true', 'false', 'null', 'try',
  'catch', 'finally', 'throw',
};

const _commentColor = Color(0xFF8C8178);
const _stringColor = Color(0xFF9CCC65);
const _numberColor = Color(0xFFE4935D);
const _keywordColor = Color(0xFF6C8EF5);

final _tokenPattern = RegExp(r"(//[^\n]*)|('(?:[^'\\]|\\.)*')|(\b\d+\.?\d*\b)|(\b\w+\b)");

/// A dark, monospaced code panel for slides that show a real Dart snippet
/// instead of describing it. Highlighting is a small hand-rolled tokenizer,
/// not a syntax-highlighting package: the deck only ever shows a handful of
/// short, single-quoted Dart snippets the author controls, so a regex pass
/// over comments/strings/numbers/keywords covers it without a new dependency.
class CodeBlock extends StatelessWidget {
  const CodeBlock({super.key, required this.code, this.language = 'dart'});

  final String code;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(PresentationSpacing.md),
      decoration: BoxDecoration(
        color: PresentationColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: PresentationColors.textSecondary.withValues(alpha: 0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              for (final dotColor in const [
                PresentationColors.introAccent,
                PresentationColors.qaAccent,
                Color(0xFF9CCC65),
              ])
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: dotColor.withValues(alpha: 0.6),
                    ),
                  ),
                ),
              const Spacer(),
              Text(language, style: PresentationText.caption),
            ],
          ),
          const SizedBox(height: PresentationSpacing.sm),
          Text.rich(
            TextSpan(children: _highlight(code)),
            style: const TextStyle(
              fontFamily: 'SpaceMono',
              fontSize: 18,
              height: 1.5,
              color: PresentationColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  List<InlineSpan> _highlight(String source) {
    final spans = <InlineSpan>[];
    var lastEnd = 0;

    for (final match in _tokenPattern.allMatches(source)) {
      if (match.start > lastEnd) {
        spans.add(TextSpan(text: source.substring(lastEnd, match.start)));
      }

      final text = match[0]!;
      final color = switch (match) {
        _ when match[1] != null => _commentColor,
        _ when match[2] != null => _stringColor,
        _ when match[3] != null => _numberColor,
        _ when _dartKeywords.contains(text) => _keywordColor,
        _ => PresentationColors.textPrimary,
      };

      spans.add(TextSpan(text: text, style: TextStyle(color: color)));
      lastEnd = match.end;
    }

    if (lastEnd < source.length) {
      spans.add(TextSpan(text: source.substring(lastEnd)));
    }

    return spans;
  }
}
