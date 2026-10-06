import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final cupertinoAppSlide = Slide(
  semanticId: 'flutter-advanced-cupertino-app',
  eyebrow: 'FLUTTER',
  title: 'CupertinoApp',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'CupertinoApp',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'Os componentes prontos no estilo iOS',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'CupertinoApp: a mesma ideia do MaterialApp, com tema e Navigator '
            'próprios do estilo iOS',
        'CupertinoPageScaffold + CupertinoNavigationBar: estrutura de '
            'tela e barra de navegação com o visual nativo da Apple',
        'CupertinoButton, CupertinoSwitch, CupertinoTextField, '
            'CupertinoActivityIndicator: os mesmos controles, com a '
            'aparência iOS',
        'CupertinoTabScaffold + CupertinoTabBar para navegação por abas; '
            'CupertinoAlertDialog para diálogos nativos',
      ],
    ),
  ),
);
