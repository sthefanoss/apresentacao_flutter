import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_dart_badges.dart';
import '../../widgets/slide_scaffold.dart';

final ownRenderingSlide = Slide(
  semanticId: 'flutter-dart-own-rendering',
  eyebrow: 'FLUTTER & DART',
  title: 'Flutter desenha a própria UI',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER & DART',
    title: 'Flutter desenha a própria UI',
    accentColor: PresentationColors.flutterDartAccent,
    subtitle: 'Não usa os widgets nativos da plataforma',
    cornerVisual: const FlutterDartBadges(accentColor: PresentationColors.flutterDartAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterDartAccent,
      items: [
        'Cada frame é desenhado pelo motor gráfico (Skia/Impeller) direto '
            'num canvas — só uma superfície exposta pelo sistema operacional',
        'Visual idêntico em qualquer plataforma, sem depender de UIKit, '
            'Views do Android ou HTML/CSS',
        'Trade-off: o app embute o próprio motor de renderização — binário '
            'maior, mas controle total sobre pixel e animação',
      ],
    ),
  ),
);
