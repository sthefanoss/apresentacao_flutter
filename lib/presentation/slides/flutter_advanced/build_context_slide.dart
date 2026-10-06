import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final buildContextSlide = Slide(
  semanticId: 'flutter-advanced-build-context',
  eyebrow: 'FLUTTER',
  title: 'BuildContext',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'BuildContext',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'A posição do widget na árvore — não é um objeto de configuração',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Cada widget recebe o próprio BuildContext no build() — é a '
            'referência da posição daquele widget específico na árvore',
        'Usado para subir na árvore: Theme.of(context), '
            'MediaQuery.of(context), Navigator.of(context) procuram o '
            'InheritedWidget mais próximo acima daquele context',
        'Bug clássico de "context errado": usar o context do widget pai '
            'não enxerga o que foi inserido abaixo dele — por isso '
            'Scaffold.of(context) falha logo após criar o próprio Scaffold',
        'Async gap: nunca use um BuildContext depois de um await sem '
            'checar context.mounted antes — o widget pode ter sido '
            'removido da árvore enquanto a função esperava',
      ],
    ),
  ),
);
