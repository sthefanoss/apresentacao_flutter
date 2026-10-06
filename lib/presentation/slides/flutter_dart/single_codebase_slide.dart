import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';

final singleCodebaseSlide = Slide(
  semanticId: 'flutter-dart-single-codebase',
  eyebrow: 'INTRODUÇÃO',
  title: 'Um código, todas as plataformas',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'INTRODUÇÃO',
    title: 'Um código, todas as plataformas',
    accentColor: PresentationColors.flutterDartAccent,
    subtitle: 'Mesmo código-fonte Dart compilado para cada destino',
    body: const BulletList(
      accentColor: PresentationColors.flutterDartAccent,
      items: [
        'Android, iOS, web, desktop (Windows/macOS/Linux) e embedded a '
            'partir da mesma base de código',
        'Compilador nativo por plataforma: ARM/x64 em mobile e desktop, '
            'JavaScript/Wasm na web',
        'UI, lógica de negócio e testes compartilhados — menos duplicação '
            'entre times e plataformas',
      ],
    ),
  ),
);
