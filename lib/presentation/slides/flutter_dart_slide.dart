import 'package:flutter/material.dart';

import '../presentation_theme.dart';
import '../slide.dart';
import '../widgets/bullet_list.dart';

final flutterDartSlide = Slide(
  semanticId: 'flutter-dart',
  title: 'Flutter & Dart',
  builder: (context) => Padding(
    padding: const EdgeInsets.all(PresentationSpacing.xl),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Flutter & Dart', style: PresentationText.display),
        const SizedBox(height: PresentationSpacing.lg),
        const BulletList(
          items: [
            'Um único código-fonte Dart compilado para Android, iOS, web, '
                'desktop e embedded',
            'Dart: tipado, com compilação AOT (apps) e JIT (hot reload)',
            'Flutter renderiza sua própria UI — não usa os widgets nativos '
                'da plataforma',
            'Hot reload: troque o código e veja o resultado na tela em '
                'segundos, sem perder o estado',
            'Este slide, inclusive, está rodando com hot reload — '
                'qualquer mudança no código aparece na hora',
          ],
        ),
      ],
    ),
  ),
);
