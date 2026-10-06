import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/bullet_list.dart';

final introSlide = Slide(
  semanticId: 'intro',
  title: 'Quem sou eu',
  builder: (context) => Padding(
    padding: const EdgeInsets.all(PresentationSpacing.xl),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sthefano Schiavon', style: PresentationText.display),
              const SizedBox(height: PresentationSpacing.sm),
              const Text(
                'Engenheiro de Software Mobile · Flutter desde 2020',
                style: PresentationText.heading,
              ),
              const SizedBox(height: PresentationSpacing.lg),
              const BulletList(
                items: [
                  'Senior Mobile Engineer na Runsmith',
                  '7 projetos Flutter em produção, 5 publicados nas lojas',
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
      ],
    ),
  ),
);
