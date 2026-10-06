import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/slide_scaffold.dart';

const _bindingSetupCode = '''
void main() {
  if (kDebugMode) {
    MarionetteBinding.ensureInitialized();
  } else {
    WidgetsFlutterBinding.ensureInitialized();
  }

  runApp(const MyApp());
}''';

final marionetteInstallSlide = Slide(
  semanticId: 'marionette-install',
  eyebrow: 'MARIONETTE',
  title: 'Instalando o marionette',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'Instalando o marionette',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'No projeto Flutter e na ferramenta agêntica',
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.marionetteAccent,
          items: [
            'No projeto Flutter: flutter pub add marionette_flutter, '
                'depois inicializar o MarionetteBinding só em '
                'kDebugMode — exatamente o que este projeto faz',
            'O servidor: dart pub global activate marionette_mcp (ou '
                'como dev_dependency, rodando com dart run marionette_mcp)',
            'Na ferramenta: registrar marionette_mcp como servidor MCP — '
                'no Claude Code, um único comando (claude mcp add); em '
                'Cursor/Antigravity/Copilot, um JSON curto apontando pro '
                'comando',
            'Rodar o app em debug, pegar a URI do VM Service no console '
                '(ws://127.0.0.1:porta/ws) e mandar o agente conectar — '
                'só funciona em debug/profile, nunca em release',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _bindingSetupCode),
      ],
    ),
  ),
);
