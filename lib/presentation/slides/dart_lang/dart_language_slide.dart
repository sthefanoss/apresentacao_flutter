import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_dart_badges.dart';
import '../../widgets/slide_scaffold.dart';

final dartLanguageSlide = Slide(
  semanticId: 'dart-language',
  eyebrow: 'DART',
  title: 'Dart: multiparadigma e fortemente tipada',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'DART',
    title: 'Dart: multiparadigma e fortemente tipada',
    accentColor: PresentationColors.flutterDartAccent,
    cornerVisual: const FlutterDartBadges(accentColor: PresentationColors.flutterDartAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterDartAccent,
      items: [
        'Multiparadigma: orientada a objetos, com recursos funcionais — '
            'funções de primeira classe, closures, coleções imutáveis',
        'Fortemente tipada, com inferência — o tipo é checado em tempo de '
            'compilação, mesmo quando não escrito explicitamente',
        'Sem herança múltipla de classes — usa mixins para compor '
            'comportamento entre hierarquias sem o problema do diamante',
        'Null safety obrigatório: o compilador força o tratamento '
            'explícito de valores nulos, eliminando boa parte dos erros de '
            'null em tempo de compilação',
      ],
    ),
  ),
);
