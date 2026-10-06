import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

final localAiSlide = Slide(
  semanticId: 'flutter-advanced-local-ai',
  eyebrow: 'FLUTTER',
  title: 'IA local, offline, no app',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'IA local, offline, no app',
    accentColor: PresentationColors.flutterAdvancedAccent,
    subtitle: 'Sem depender de um servidor para rodar o modelo',
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const BulletList(
      accentColor: PresentationColors.flutterAdvancedAccent,
      items: [
        'Pacotes como flutter_gemma rodam modelos Gemma direto no '
            'dispositivo (Android/iOS/desktop), via MediaPipe/LiteRT',
        'Sem chamada de rede: funciona offline, sem custo de API por '
            'request, e mantém os dados do usuário no aparelho',
        'Dá pra montar um chat simples: UI de mensagens normal + '
            'inferência local a cada mensagem, sem backend de IA',
      ],
    ),
  ),
);
