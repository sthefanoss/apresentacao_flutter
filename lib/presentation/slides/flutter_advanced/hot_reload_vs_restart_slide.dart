import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final hotReloadVsRestartSlide = Slide(
  semanticId: 'flutter-advanced-hot-reload-vs-restart',
  eyebrow: 'FLUTTER',
  title: 'Hot reload vs hot restart vs novo build',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Hot reload vs hot restart vs novo build',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Hot reload: injeta código novo na VM mantendo o estado — não '
            'pega mudanças em main(), em variáveis globais/estáticas ou em '
            'código nativo',
        'Hot restart: recria a VM Dart e reinicia o app do zero — estado '
            'perdido, mas detecta mudanças que o reload ignora',
        'Novo build (debug): necessário quando algo muda fora do Dart — '
            'dependências nativas, permissões, assets novos no pubspec, ou '
            'arquivos de plataforma (Info.plist, AndroidManifest.xml)',
      ],
    ),
  ),
);
