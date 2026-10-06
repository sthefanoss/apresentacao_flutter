import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_icon_badge.dart';
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

final statefulWidgetSlide = Slide(
  semanticId: 'flutter-advanced-stateful-widget',
  eyebrow: 'FLUTTER',
  title: 'StatefulWidget',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'StatefulWidget',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'O que é "estado", e por que precisa do setState()',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'Estado é qualquer dado que pode mudar durante a vida do '
                'widget e afeta o que é desenhado — um contador, o texto '
                'de um campo, se um painel está aberto',
            'StatefulWidget divide o trabalho em dois objetos: o Widget '
                '(configuração imutável) e o State (onde o dado mutável '
                'mora e sobrevive a rebuilds)',
            'setState() não é "alterar a variável" — é o aviso pro '
                'Flutter: "esse dado mudou, rode build() de novo e '
                'redesenhe". Sem chamar, o Flutter não sabe que a tela '
                'está desatualizada',
            'Quando usar: o widget precisa lembrar algo entre rebuilds e '
                'reagir sozinho a uma mudança — animação, controller, '
                'valor de formulário, resposta de uma chamada assíncrona',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _counterCode),
      ],
    ),
  ),
);
