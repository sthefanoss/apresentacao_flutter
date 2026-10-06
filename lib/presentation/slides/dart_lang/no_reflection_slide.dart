import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/code_block.dart';
import '../../widgets/flutter_dart_badges.dart';
import '../../widgets/slide_scaffold.dart';

const _manualSerializationCode = '''
class User {
  const User({required this.id, required this.name});

  final String id;
  final String name;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String,
        name: json['name'] as String,
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}''';

final noReflectionSlide = Slide(
  semanticId: 'dart-no-reflection',
  eyebrow: 'DART',
  title: 'Dart não tem reflexão (de verdade)',
  accentColor: PresentationColors.flutterDartAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'DART',
    title: 'Dart não tem reflexão (de verdade)',
    accentColor: PresentationColors.flutterDartAccent,
    subtitle: 'O que isso custa na prática',
    cornerVisual: const FlutterDartBadges(accentColor: PresentationColors.flutterDartAccent),
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.flutterDartAccent,
          items: [
            'Reflexão = inspecionar/manipular tipos, campos e métodos em '
                'tempo de execução sem conhecê-los em tempo de compilação '
                '(é assim que Java/C# serializam objetos automaticamente)',
            'Dart tem dart:mirrors, mas é desabilitado em builds AOT e na '
                'web — reflexão exigiria manter metadados de todos os '
                'tipos no binário, contra o objetivo de apps pequenos e '
                'com startup rápido',
            'Consequência direta: (de/)serialização JSON não é automática '
                '— é escrita manualmente ou gerada em build time por '
                'pacotes como json_serializable/freezed (build_runner)',
            'É uma troca consciente: mais boilerplate (ou um passo de '
                'geração de código) em troca de tree-shaking agressivo e '
                'startup previsível — na prática, uma desvantagem real do '
                'dia a dia',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        CodeBlock(code: _manualSerializationCode),
      ],
    ),
  ),
);
