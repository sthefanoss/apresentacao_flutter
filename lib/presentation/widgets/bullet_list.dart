import 'package:flutter/material.dart';

import '../presentation_theme.dart';

/// Reused by every slide that needs a list of talking points, so bullet
/// spacing and glyph stay identical instead of each slide hand-rolling it.
class BulletList extends StatelessWidget {
  const BulletList({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: PresentationSpacing.sm),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('›  ', style: PresentationText.body),
                Expanded(child: Text(item, style: PresentationText.body)),
              ],
            ),
          ),
      ],
    );
  }
}
