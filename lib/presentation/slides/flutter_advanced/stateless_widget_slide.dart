import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

const _greetingCode = '''
class Greeting extends StatelessWidget {
  const Greeting({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text('Olá, \$name!');
  }
}''';

final statelessWidgetSlide = Slide(
  semanticId: 'flutter-advanced-stateless-widget',
  eyebrow: 'FLUTTER',
  title: 'StatelessWidget',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'StatelessWidget',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'UI pura, derivada só dos parâmetros recebidos',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'Imutável: todos os campos são final, definidos uma vez no '
                'construtor — o widget inteiro não muda sozinho',
            'build() só roda de novo quando o pai manda novos parâmetros '
                '(ou um InheritedWidget que ele escuta muda)',
            'Quando usar: a aparência depende só do que foi passado de '
                'fora — texto, ícone, botão sem estado próprio, layout '
                'estático',
            'Mais simples e mais barato: não existe um segundo objeto '
                '(State) separado pra criar, guardar e descartar',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _greetingCode),
      ],
    ),
  ),
);
