import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/slide_backdrop.dart';
import '../widgets/slide_header.dart';

final qaSlide = Slide(
  semanticId: 'qa',
  eyebrow: 'PERGUNTAS',
  title: 'Perguntas',
  accentColor: PresentationColors.qaAccent,
  builder: (context) => SlideBackdrop(
    accentColor: PresentationColors.qaAccent,
    child: Padding(
      padding: const EdgeInsets.all(PresentationSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SlideHeader(
            number: 4,
            eyebrow: 'PERGUNTAS',
            accentColor: PresentationColors.qaAccent,
          ),
          const SizedBox(height: PresentationSpacing.md),
          const Text('Perguntas?', style: PresentationText.display),
          const SizedBox(height: PresentationSpacing.md),
          const Text(
            'A partir de agora o app está aberto: peça uma mudança e '
                'vamos editar o código, com hot reload, em tempo real.',
            style: PresentationText.body,
          ),
        ],
      ),
    ),
  ),
);
