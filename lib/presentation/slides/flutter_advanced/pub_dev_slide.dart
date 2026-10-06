import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final pubDevSlide = Slide(
  semanticId: 'flutter-advanced-pub-dev',
  eyebrow: 'FLUTTER',
  title: 'pub.dev',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'pub.dev',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'O repositório oficial de pacotes Flutter e Dart',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Catálogo público mantido pelo time do Dart/Flutter — todo pacote '
            'citado nesta talk (shared_preferences, dio, '
            'firebase_analytics, flutter_gemma...) vem de lá',
        'Cada pacote tem Pub Points (qualidade), popularidade e '
            'compatibilidade de plataforma — ajuda a escolher entre opções '
            'concorrentes',
        '"Flutter Favorite" é o selo que o Google dá a pacotes de '
            'referência em qualidade e manutenção dentro de uma categoria',
        'flutter pub add <pacote> adiciona a dependência no pubspec.yaml; '
            'flutter pub get resolve e baixa',
      ],
    ),
  ),
);
