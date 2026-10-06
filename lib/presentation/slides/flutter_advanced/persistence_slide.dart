import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final persistenceSlide = Slide(
  semanticId: 'flutter-advanced-persistence',
  eyebrow: 'FLUTTER',
  title: 'Persistência de dados',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Persistência de dados',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'shared_preferences: pares chave-valor simples — flags e '
            'preferências do usuário',
        'sqflite ou drift: banco relacional SQLite local, bom para dados '
            'estruturados e consultas',
        'Hive / Isar: banco NoSQL embutido, rápido, orientado a objetos '
            'Dart',
        'path_provider + File: para salvar arquivos binários (imagens, '
            'cache) direto no disco do dispositivo',
      ],
    ),
  ),
);
