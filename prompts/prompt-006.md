# Prompt 006

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

renomeio o "Flutter & Dart" para "Introdução", remova os icones do header;

nos slides de "Flutter avançado", deixe apenas "Flutter" e remova o icone do dart;

nos slides de dart, remova o icone do flutter;

## Resposta

Feito.

- Os 4 slides que eram "FLUTTER & DART" agora têm eyebrow "INTRODUÇÃO" e não mostram mais ícone
  no canto.
- Os 8 slides de "Flutter avançado" agora têm eyebrow "FLUTTER" e mostram só o logo do Flutter
  (badge maior, já que não precisa mais dividir o canto com o logo do Dart).
- Os 2 slides de "Dart" mantêm o eyebrow "DART" e mostram só o logo do Dart.

O badge combinado (`FlutterDartBadges`) não era mais usado em lugar nenhum depois dessa troca, então
removi o arquivo em vez de deixar código morto, e criei dois badges de ícone único
(`FlutterIconBadge`, `DartIconBadge`) reaproveitando o mesmo `CornerBadge`. `flutter analyze` no
projeto inteiro não encontrou problemas.
