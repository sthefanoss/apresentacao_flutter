import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final marionetteFeaturesSlide = Slide(
  semanticId: 'marionette-features',
  eyebrow: 'MARIONETTE',
  title: 'O que o marionette oferece',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'O que o marionette oferece',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'Ferramentas que o agente ganha ao conectar no app rodando',
    body: const BulletList(
      accentColor: PresentationColors.marionetteAccent,
      items: [
        'connect / disconnect: conecta no app pela URI do VM Service — a '
            'mesma porta que o DevTools usa',
        'get_interactive_elements: lista os elementos interativos '
            'visíveis na tela — sem isso, o agente teria que adivinhar o '
            'que existe',
        'tap, enter_text, scroll_to: interage com a UI por chave ou '
            'texto visível, como um usuário faria',
        'take_screenshots, get_logs, hot_reload: captura a tela, lê os '
            'logs da aplicação e aplica hot reload — tudo sem sair do '
            'chat com o agente',
        'Também existe o marionette_cli, pra ambientes que não permitem '
            'MCP — a mesma funcionalidade via linha de comando, com '
            'extras como gravação de vídeo da interação',
      ],
    ),
  ),
);
