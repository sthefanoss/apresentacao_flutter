import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final mcpSlide = Slide(
  semanticId: 'marionette-mcp',
  eyebrow: 'MARIONETTE',
  title: 'O que são MCPs',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'O que são MCPs',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'Model Context Protocol: o padrão que conecta agentes a ferramentas',
    body: const BulletList(
      accentColor: PresentationColors.marionetteAccent,
      items: [
        'Protocolo aberto (JSON-RPC) que padroniza como um agente de IA '
            'descobre e chama ferramentas externas — sem cada app '
            'reinventar sua própria integração',
        'Um servidor MCP expõe "tools" (funções que o agente pode '
            'chamar), "resources" (dados que pode ler) e "prompts" '
            '(templates reutilizáveis)',
        'Comunicação via stdio (servidor local, processo filho do seu '
            'editor/CLI) ou HTTP (servidor remoto) — o agente nunca '
            'executa nada direto, quem chama a ferramenta de verdade é o '
            'host (Claude Code, Cursor...); o modelo só decide o quê '
            'chamar',
        'Por que agiliza tanto: escreve um servidor MCP uma vez (ex: '
            'marionette_mcp) e ganha suporte em qualquer ferramenta '
            'compatível — Claude Code, Cursor, Copilot, Gemini CLI — de '
            'graça, sem integração dedicada pra cada uma',
      ],
    ),
  ),
);
