import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final httpSlide = Slide(
  semanticId: 'flutter-advanced-http',
  eyebrow: 'FLUTTER',
  title: 'Chamadas HTTP',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Chamadas HTTP',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'package:http: cliente oficial, simples, cobre a maioria dos casos',
        'dio: interceptors, cancelamento de requisição, upload/download '
            'com progresso, timeouts configuráveis',
        'Padrão comum: um repositório encapsula o client e devolve '
            'modelos tipados (fromJson) — nunca a Response crua para a UI',
      ],
    ),
  ),
);
