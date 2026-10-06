import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final testingSlide = Slide(
  semanticId: 'flutter-advanced-testing',
  eyebrow: 'FLUTTER',
  title: 'Testes unitários e de widget',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Testes unitários e de widget',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Testes unitários (package:test): validam lógica pura — funções, '
            'classes, repositórios — sem UI nem bindings do Flutter',
        'Testes de widget (flutter_test): constroem um widget em memória '
            '(WidgetTester) e verificam a árvore renderizada, sem precisar '
            'de um device',
        'testWidgets + pump/pumpAndSettle simulam frames e animações; '
            'find.byType/byKey localizam elementos na árvore',
      ],
    ),
  ),
);
