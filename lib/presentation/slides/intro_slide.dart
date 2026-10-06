import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/bullet_list.dart';
import '../widgets/corner_badge.dart';
import '../widgets/slide_scaffold.dart';

final introSlide = Slide(
  semanticId: 'intro',
  eyebrow: 'QUEM SOU EU',
  title: 'Sthefano Schiavon',
  accentColor: PresentationColors.introAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'QUEM SOU EU',
    title: 'Sthefano Schiavon',
    accentColor: PresentationColors.introAccent,
    subtitle: 'Engenheiro de Software Mobile · Flutter desde 2020',
    cornerVisual: CornerBadge(
      accentColor: PresentationColors.introAccent,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ClipOval(
          child: Image.asset(
            'assets/images/sthefano.webp',
            width: 132,
            height: 132,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BulletList(
          accentColor: PresentationColors.introAccent,
          items: [
            'Engenheiro de Software Mobile na Runsmith',
            'Começou estudando em Android/Java',
            'Mantenedor do pacote flutter_multi_slider',
            'Contribuidor do marionette_flutter',
          ],
        ),
        const SizedBox(height: PresentationSpacing.lg),
        const Text(
          'sthefano.dev  ·  github.com/sthefanoss  ·  linkedin.com/in/sthefanoss',
          style: PresentationText.caption,
        ),
      ],
    ),
  ),
);
