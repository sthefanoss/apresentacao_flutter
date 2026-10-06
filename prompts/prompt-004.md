# Prompt 004

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

vamos modificar o slide a meu respeito, troque os dois primeiros por estes, e ainda adicione a minha foto presente no sthefano.dev. Encontre um bom lugar para deixa-la. 
- Engenheiro de Software Mobile na Runsmith;
- Começou estudando em Android/Java;

## Resposta

Troquei os dois primeiros bullets do slide "Quem sou eu" ([intro_slide.dart](lib/presentation/slides/intro_slide.dart)) por "Engenheiro de Software Mobile na Runsmith" e "Começou estudando em Android/Java", mantendo os dois últimos (flutter_multi_slider e marionette_flutter).

Para a foto, baixei seu avatar de sthefano.dev (120×120, o mesmo usado no `alt="Sthefano Schiavon"` do site) e adicionei em `assets/images/sthefano.webp`, registrado em pubspec.yaml. Posicionei como um círculo com anel na cor de destaque do slide, no canto superior direito — mesmo canto onde já existia o glow decorativo do `SlideBackdrop`, então a foto reforça esse elemento em vez de competir com ele.

`flutter analyze` e `flutter pub get` passaram limpos. Tentei abrir o app (macOS desktop) e tirar um screenshot para conferir visualmente, mas o `screencapture` falhou por falta de permissão de gravação de tela neste ambiente — não consegui validar visualmente o resultado final renderizado, só o código e o asset em si (confirmei que o avatar baixado é realmente sua foto antes de usá-lo).

