# apresentacao_flutter

Apresentação sobre Flutter, Dart e [marionette](https://pub.dev/packages/marionette_flutter),
construída como um app Flutter em vez de slides estáticos. Roda em Android, iOS e macOS.

## Estrutura dos slides

- `lib/presentation/slides_data.dart` — lista ordenada de slides. Adicionar, remover ou
  reordenar um slide é a única edição necessária aqui.
- `lib/presentation/slides/*.dart` — um arquivo por slide (intro, Flutter & Dart, marionette, Q&A).
- `lib/presentation/presentation_screen.dart` — o deck: `PageView` com navegação por toque,
  teclado (`←`/`→`/`espaço`/`Page Up`/`Page Down`) e os botões de navegação.
- `lib/presentation/presentation_theme.dart` — escala de espaçamento e tipografia compartilhada
  por todos os slides.

Cada slide e cada controle de navegação tem uma `Key`/`Semantics` estável (`slide-intro`,
`next-slide-button`, `current-slide-indicator`, ...), para que tanto testes quanto o marionette
consigam localizá-los de forma confiável.

## Direção visual

Paleta e tipografia se inspiram em [Wonderous](https://github.com/gskinnerTeam/flutter-wonderous-app):
fundo quase-preto e texto quase-branco (nunca preto/branco puros), e uma cor de destaque por
slide (`PresentationColors` em `presentation_theme.dart`). As fontes — SpaceGrotesk (títulos e
corpo) e SpaceMono (rótulos/legendas) — ficam em `assets/fonts/`, empacotadas localmente (sem
`google_fonts`) para a apresentação não depender de wifi no dia.

## Rodando

```bash
flutter pub get
flutter run -d macos   # ou -d <device-id> para Android/iOS
```

## Editando em tempo real com o marionette

Este app inicializa `MarionetteBinding` em modo debug (`lib/main.dart`), o que permite a um
agente de IA inspecionar e dirigir o app enquanto ele roda — é a parte da apresentação sobre
perguntas e modificações ao vivo.

```bash
dart pub global activate marionette_mcp
claude mcp add --transport stdio marionette -- marionette_mcp
flutter run -d macos
```

Copie a URI do VM service impressa no console do `flutter run` e peça ao agente para conectar
nela. A partir daí ele pode navegar os slides, ler o slide atual (via `current-slide-indicator`)
e, para as modificações ao vivo, editar os arquivos em `lib/presentation/slides/` — o hot reload
aplica a mudança na hora.

## Prompts desta sessão

A pasta [`prompts/`](prompts/) guarda, em ordem, os prompts usados para construir este projeto
com o Claude Code — para os alunos acompanharem o processo, não só o resultado.
