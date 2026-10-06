import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';

final qaSlide = Slide(
  semanticId: 'qa',
  title: 'Perguntas',
  builder: (context) => Padding(
    padding: const EdgeInsets.all(PresentationSpacing.xl),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Perguntas?', style: PresentationText.display),
        SizedBox(height: PresentationSpacing.md),
        Text(
          'A partir de agora o app está aberto: peça uma mudança e '
              'vamos editar o código, com hot reload, em tempo real.',
          style: PresentationText.body,
        ),
      ],
    ),
  ),
);
