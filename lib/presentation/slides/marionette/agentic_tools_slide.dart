import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final agenticToolsSlide = Slide(
  semanticId: 'marionette-agentic-tools',
  eyebrow: 'MARIONETTE',
  title: 'Desenvolvendo com ferramentas agênticas',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'Desenvolvendo com ferramentas agênticas',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'De autocomplete a colega que executa comandos',
    body: const BulletList(
      accentColor: PresentationColors.marionetteAccent,
      items: [
        'Claude Code, GitHub Copilot, OpenAI Codex, Cursor, Google '
            'Antigravity — todas seguem a mesma ideia: um agente com '
            'acesso a terminal, arquivos e ferramentas, não só sugestão '
            'de texto',
        'A diferença pro autocomplete clássico: o agente lê o '
            'repositório, roda comandos, edita vários arquivos, roda '
            'testes e itera sozinho até o resultado bater com o pedido',
        'Na prática, menos tempo escrevendo boilerplate e mais tempo '
            'revisando decisões — o gargalo vira "descrever bem o que '
            'você quer", não "digitar o código"',
        'Esta talk inteira, deck incluso, foi construída assim — cada '
            'slide novo começou como um prompt, e o histórico está '
            'versionado no próprio repositório',
      ],
    ),
  ),
);
