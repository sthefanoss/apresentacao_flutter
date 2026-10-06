import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final aotJitSlide = Slide(
  semanticId: 'flutter-dart-aot-jit',
  eyebrow: 'INTRODUÇÃO',
  title: 'Dart: AOT e JIT',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'INTRODUÇÃO',
    title: 'Dart: AOT e JIT',
    accentColor: PresentationColors.flutterDartAccent,
    subtitle: 'Dois modos de compilação, dois objetivos diferentes',
    body: const BulletList(
      accentColor: PresentationColors.flutterDartAccent,
      items: [
        'AOT (Ahead-Of-Time): gera código de máquina nativo — usado nos '
            'builds de release, início rápido e performance previsível',
        'JIT (Just-In-Time): compila em tempo de execução — usado em '
            'debug, é o que permite o hot reload',
        'flutter run usa JIT; flutter build usa AOT',
      ],
    ),
  ),
);
