# Prompt 003

Data: 2026-10-06
Hora: 00:09
Ferramenta: Claude Code

---

## Pedido

agora considere incluir hora e minutos no prompt também!

além disso, o slide está muito sem graça, apenas branco e preto. tem como se basear nesse projeto para a "direção artística"? https://github.com/gskinnerTeam/flutter-wonderous-app

lembrando que a apresentação é horizontal, não vertical

## Resposta

Feito — três coisas:

**Hora no prompt log.** `CLAUDE.md` e este próprio arquivo já usam `Data:` + `Hora:`.

**Direção visual, baseada no Wonderous de verdade.** Fui ler o código-fonte dele (`styles.dart`, `colors.dart`), não só a descrição: a identidade vem de um fundo quase-preto (`0xFF1E1B18`) e texto quase-branco (`0xFFF8ECE5`) — nunca preto/branco puros — e de uma fonte de título serifada + uma mono para rótulos pequenos. Usei exatamente esses dois tons de fundo/texto, e troquei a serifa "monumento antigo" por algo que cabe num talk de dev: SpaceGrotesk para título/corpo e SpaceMono para os rótulos ("01 — QUEM SOU EU"). Cada slide ganhou sua própria cor de destaque (o Wonderous faz isso por maravilha; eu fiz por assunto): terracota na intro, ciano em Flutter & Dart, violeta no marionette, dourado no Q&A — aparece no rótulo, nos marcadores de lista, nos botões de navegação e num brilho sutil no canto do slide.

As fontes (SpaceGrotesk variável + SpaceMono, ambas OFL) estão baixadas e empacotadas em `assets/fonts/`, não via pacote `google_fonts` — assim a apresentação não depende de internet no dia. Os arquivos de licença (`OFL-*.txt`) ficam junto.

**Horizontal, não vertical.** No iOS e Android isso é travado de verdade: `Info.plist` só lista `LandscapeLeft`/`LandscapeRight` (tirei o Portrait de iPhone e iPad); o `AndroidManifest.xml` da activity ganhou `android:screenOrientation="landscape"`. No macOS não existe essa trava (é uma janela, o usuário redimensiona), então só ajustei o tamanho padrão para 1280×720 (16:9) com mínimo de 960×540.

**Importante, para você verificar:** tentei confirmar visualmente o macOS e caí numa armadilha — depois de várias reaberturas forçadas via terminal, a própria ferramenta do Flutter começou a reportar "Failed to foreground app; open returned 1": este sandbox não conseguia mais trazer a janela pra frente, não é algo que eu tenha quebrado no código (cheguei a reverter e re-aplicar o tamanho da janela atrás disso até perceber que o problema era do ambiente, não do Swift). Então não tenho confirmação visual do tamanho/cor da janela no macOS — só sei que compila limpo. `flutter analyze` sem avisos e os 6 testes de widget passando. Pode abrir no seu Mac e me dizer se a janela abre em 1280×720 e se a paleta ficou como eu descrevi.

Um commit (`prompt-003`) com tudo: `CLAUDE.md`, tema, fontes, slides, orientação e este log.
