import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/bullet_list.dart';
import '../widgets/slide_backdrop.dart';
import '../widgets/slide_header.dart';

final introSlide = Slide(
  semanticId: 'intro',
  eyebrow: 'QUEM SOU EU',
  title: 'Sthefano Schiavon',
  accentColor: PresentationColors.introAccent,
  builder: (context) => SlideBackdrop(
    accentColor: PresentationColors.introAccent,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(PresentationSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SlideHeader(
                number: 1,
                eyebrow: 'QUEM SOU EU',
                accentColor: PresentationColors.introAccent,
              ),
              const SizedBox(height: PresentationSpacing.md),
              const Text('Sthefano Schiavon', style: PresentationText.display),
              const SizedBox(height: PresentationSpacing.sm),
              const Text(
                'Engenheiro de Software Mobile · Flutter desde 2020',
                style: PresentationText.heading,
              ),
              const SizedBox(height: PresentationSpacing.lg),
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
        Positioned(
          top: PresentationSpacing.xl,
          right: PresentationSpacing.xl,
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: PresentationColors.introAccent, width: 3),
            ),
            padding: const EdgeInsets.all(4),
            child: const ClipOval(
              child: Image(
                image: AssetImage('assets/images/sthefano.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
