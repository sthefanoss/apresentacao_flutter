import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_dart_badges.dart';
import '../../widgets/slide_scaffold.dart';

const _counterCode = '''
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() => setState(() => _count++);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _increment,
      child: Text('Cliques: \$_count'),
    );
  }
}''';

final widgetsSlide = Slide(
  semanticId: 'flutter-advanced-widgets',
  eyebrow: 'FLUTTER AVANÇADO',
  title: 'StatelessWidget vs StatefulWidget',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER AVANÇADO',
    title: 'StatelessWidget vs StatefulWidget',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'A pergunta certa: este widget guarda um estado que muda sozinho?',
    cornerVisual: const FlutterDartBadges(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'StatelessWidget: imutável, reconstruído só quando o pai muda '
                '— ideal para UI puramente derivada dos parâmetros recebidos',
            'StatefulWidget: separa a configuração imutável (Widget) do '
                'State mutável, que sobrevive a rebuilds e chama setState() '
                'para re-renderizar',
            'Regra prática: comece Stateless; só suba para Stateful quando '
                'precisar guardar estado local (animação, controller, '
                'valor de formulário)',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _counterCode),
      ],
    ),
  ),
);
