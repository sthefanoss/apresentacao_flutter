import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final firebaseSlide = Slide(
  semanticId: 'flutter-advanced-firebase',
  eyebrow: 'FLUTTER',
  title: 'Firebase: Analytics & Crashlytics',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Firebase: Analytics & Crashlytics',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'firebase_analytics: eventos de uso, funis, audiências — entender '
            'o que o usuário realmente faz no app',
        'firebase_crashlytics: captura crashes e erros não tratados em '
            'produção, com stack trace e contexto do dispositivo',
        'Ambos entram via FlutterFire, com pouca configuração, e dá para '
            'capturar exceptions do Dart manualmente com recordError()',
      ],
    ),
  ),
);
