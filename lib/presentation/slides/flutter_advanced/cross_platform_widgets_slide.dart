import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final crossPlatformWidgetsSlide = Slide(
  semanticId: 'flutter-advanced-cross-platform-widgets',
  eyebrow: 'FLUTTER',
  title: 'Qualquer widget roda em qualquer plataforma',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Qualquer widget roda em qualquer plataforma',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'Porque tudo é só desenho num canvas',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Material e Cupertino não são "widgets nativos" — são desenhados '
            'pelo Flutter no mesmo canvas que qualquer outro widget',
        'Por isso um CupertinoButton roda liso no Android, e um Switch '
            'Material roda liso no iOS — a plataforma não impõe nada, é só '
            'decisão de design',
        'O time do Flutter está trabalhando para desacoplar Material e '
            'Cupertino do núcleo do framework, movendo-os para pacotes '
            'externos — menos presos ao ciclo de release do engine, '
            'atualizações mais rápidas e independentes',
      ],
    ),
  ),
);
