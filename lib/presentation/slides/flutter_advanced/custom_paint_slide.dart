import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/exotic_canvas_demo.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

const _customPainterCode = '''
class SpiralPainter extends CustomPainter {
  SpiralPainter(this.t);
  final double t;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(t * 2 * pi);
    canvas.drawPath(rosePath(size), strokePaint);
  }

  @override
  bool shouldRepaint(covariant SpiralPainter old) => old.t != t;
}''';

final customPaintSlide = Slide(
  semanticId: 'flutter-advanced-custom-paint',
  eyebrow: 'FLUTTER',
  title: 'CustomPaint',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'CustomPaint',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'Quando os widgets prontos não bastam, desenhe você mesmo',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'CustomPainter dá acesso direto ao mesmo Canvas que o Flutter '
                'usa para desenhar Material e Cupertino — sem camada a mais',
            'paint(canvas, size) roda a cada frame necessário; '
                'shouldRepaint decide quando repintar',
            'Combinado com AnimationController, anima qualquer coisa: '
                'gráficos customizados, assinaturas, jogos simples, '
                'visualizações de dados — ou efeitos como este aqui ao lado',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: CodeBlock(code: _customPainterCode)),
            SizedBox(width: PresentationSpacing.lg),
            ExoticCanvasDemo(color: PresentationColors.flutterAdvancedAccent),
          ],
        ),
      ],
    ),
  ),
);
