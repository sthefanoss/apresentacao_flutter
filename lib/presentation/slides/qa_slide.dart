import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/slide_scaffold.dart';

final qaSlide = Slide(
  semanticId: 'qa',
  eyebrow: 'PERGUNTAS',
  title: 'Perguntas',
  accentColor: PresentationColors.qaAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'PERGUNTAS',
    title: 'Perguntas?',
    accentColor: PresentationColors.qaAccent,
    body: const Text(
      'A partir de agora o app está aberto: peça uma mudança e '
          'vamos editar o código, com hot reload, em tempo real.',
      style: PresentationText.body,
    ),
  ),
);
