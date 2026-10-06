# Prompt 007

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

entre o slide 7 e 8 adicione um para falar sobre o pub.dev, o repo do flutter/dart onde todos os pacotes sao fornecidos oficialmente

## Resposta

Adicionado. O novo slide "pub.dev" entrou entre "Hot reload vs hot restart vs novo build" (7) e
"Persistência de dados" (8) — como o grupo "Flutter avançado" numera automaticamente pela posição
na lista (`SlideIndexScope`), bastou inserir o slide no lugar certo em `slides_data.dart`; nenhum
outro slide precisou ser renumerado.

Conteúdo: pub.dev como catálogo oficial de pacotes Flutter/Dart, de onde vêm todos os pacotes
citados nos slides seguintes (shared_preferences, dio, firebase_analytics, flutter_gemma); Pub
Points e popularidade como critério de escolha entre pacotes concorrentes; o selo "Flutter
Favorite"; e o fluxo `flutter pub add` / `flutter pub get`. `flutter analyze` no projeto inteiro
não encontrou problemas.
