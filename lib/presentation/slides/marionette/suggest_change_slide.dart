import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final suggestChangeSlide = Slide(
  semanticId: 'marionette-suggest-change',
  eyebrow: 'MARIONETTE',
  title: 'Sugira uma mudança',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'Sugira uma mudança',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'Cada prompt desta talk virou um arquivo rastreável',
    body: const BulletList(
      accentColor: PresentationColors.marionetteAccent,
      items: [
        'Toda instrução que dei pro agente está versionada na pasta '
            'prompts/ — um arquivo por prompt, numerado, com o pedido '
            'exato e a resposta que o agente deu',
        'É literalmente o histórico desta apresentação: da foto no '
            'slide de intro até este slide aqui, cada mudança tem um '
            'prompt correspondente',
        'Proponha uma mudança agora — um slide, um ajuste visual, uma '
            'correção — e vamos pedir pro agente implementar ao vivo, '
            'com hot reload, na frente de todo mundo',
        'O próximo prompt log, numerado, vai registrar exatamente o que '
            'você pediu',
      ],
    ),
  ),
);
