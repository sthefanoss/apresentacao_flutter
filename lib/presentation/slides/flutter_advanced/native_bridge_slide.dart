import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_icon_badge.dart';
import '../../widgets/slide_scaffold.dart';

const _platformChannelCode = '''
static const _channel = MethodChannel('com.exemplo/bateria');

Future<int> getBatteryLevel() async {
  final level = await _channel.invokeMethod<int>('getBatteryLevel');
  return level ?? -1;
}''';

final nativeBridgeSlide = Slide(
  semanticId: 'flutter-advanced-native-bridge',
  eyebrow: 'FLUTTER',
  title: 'Quando (e como) chamar código nativo',
  accentColor: PresentationColors.flutterAdvancedAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'FLUTTER',
    title: 'Quando (e como) chamar código nativo',
    accentColor: PresentationColors.flutterAdvancedAccent,
    cornerVisual: const FlutterIconBadge(accentColor: PresentationColors.flutterAdvancedAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterAdvancedAccent,
          items: [
            'Necessário para APIs que o Flutter não expõe: sensores '
                'específicos, SDKs nativos de terceiros, integrações do SO',
            'A ponte é um MethodChannel: o Dart envia uma mensagem (método '
                '+ argumentos) de forma assíncrona até o lado nativo',
            'Android implementa em Kotlin/Java; iOS implementa em Swift/'
                'Objective-C — cada plataforma registra seu handler para o '
                'mesmo nome de canal',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _platformChannelCode),
      ],
    ),
  ),
);
