import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final marionetteSlide = Slide(
  semanticId: 'marionette',
  eyebrow: 'MARIONETTE',
  title: 'marionette_flutter + marionette_mcp',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'marionette',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: '"Playwright, mas para apps Flutter"',
    body: const BulletList(
      accentColor: PresentationColors.marionetteAccent,
      items: [
        'marionette_flutter: binding que você adiciona ao app '
            '(só em debug) e expõe a árvore de widgets',
        'marionette_mcp: servidor MCP que conecta agentes de IA '
            '(Claude Code, Cursor, Copilot...) ao app rodando',
        'O agente consegue ver elementos interativos, tocar botões, '
            'digitar texto, rolar a tela e tirar screenshots',
        'Esta própria apresentação está instrumentada com '
            'marionette_flutter — o agente pode navegar os slides '
            'e editar o código ao vivo, o que vamos ver agora',
      ],
    ),
  ),
);
