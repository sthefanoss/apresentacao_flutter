import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

const _lifecycleCode = '''
class _MyState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    // roda uma vez, antes do 1º build
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // InheritedWidget já disponível aqui (Theme.of, MediaQuery.of...)
  }

  @override
  void didUpdateWidget(MyWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // o pai recriou o widget com props novas
  }

  @override
  void dispose() {
    // cancelar controllers/streams/timers aqui
    super.dispose();
  }
}''';

final statefulWidgetLifecycleSlide = Slide(
  semanticId: 'flutter-advanced-stateful-widget-lifecycle',
  eyebrow: 'FLUTTER',
  title: 'StatefulWidget: ciclo de vida',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'StatefulWidget: ciclo de vida',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'A sequência de métodos que todo State passa',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'initState(): roda uma única vez, antes do primeiro build — '
                'lugar certo pra inicializar controllers, assinar streams, '
                'ler valores iniciais',
            'didChangeDependencies(): roda logo depois do initState(), e '
                'de novo sempre que um InheritedWidget do qual o State '
                'depende muda — só aqui é seguro usar Theme.of/'
                'MediaQuery.of pela primeira vez',
            'build(): roda toda vez que a tela precisa redesenhar — após '
                'um setState(), um rebuild do pai, ou uma dependência '
                'mudar; precisa ser rápido e sem efeito colateral',
            'didUpdateWidget(oldWidget): roda quando o pai reconstrói o '
                'widget com uma configuração nova (mesma chave, '
                'propriedades diferentes) — dá pra comparar valor antigo '
                'com o novo',
            'dispose(): roda uma única vez, quando o State sai da árvore '
                'pra sempre — cancele controllers, streams e timers aqui, '
                'ou é vazamento de memória garantido',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _lifecycleCode),
      ],
    ),
  ),
);
