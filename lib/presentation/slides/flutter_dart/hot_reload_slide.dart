import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final hotReloadSlide = Slide(
  semanticId: 'flutter-dart-hot-reload',
  eyebrow: 'INTRODUÇÃO',
  title: 'Hot reload',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'INTRODUÇÃO',
    title: 'Hot reload',
    accentColor: PresentationColors.flutterDartAccent,
    subtitle: 'Troque o código, veja o resultado em segundos',
    body: const BulletList(
      accentColor: PresentationColors.flutterDartAccent,
      items: [
        'Injeta o novo código-fonte na VM Dart em execução e reconstrói a '
            'árvore de widgets, sem perder o estado atual do app',
        'Só funciona em debug: depende da compilação JIT, que o build de '
            'release (AOT) não tem',
        'Não serve para tudo: mudanças em main(), em variáveis globais/'
            'estáticas ou em código nativo pedem um hot restart',
        'Esta apresentação, inclusive, está rodando com hot reload agora — '
            'qualquer mudança no código deste slide aparece na hora, sem '
            'reiniciar o app',
      ],
    ),
  ),
);
