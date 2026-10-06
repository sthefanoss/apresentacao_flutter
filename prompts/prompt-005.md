# Prompt 005

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

agora vamos extender a parte do flutter e dart, além de colocar mais slides e conteúdos:

primeiramente gostaria de ter os icones do dart e do flutter no mesmo local onde tem a minha foto; faça com que os headers de todos os slides fiquem em uma posição padrão

eu criaria 1 slide para cada item dessa lista, porém o "este slide" seria removido como item e movido para dentro do "Hot reload", onde ele será mais explicado

Além disso, seria interessante permitir mais itens visuais nos slides, por exemplo, no dart daria para colocar um bloco de código formatado como seria realmente 

depois eu criaria um grupo mais avançado sobre flutter, onde explicaria sobre stateful/stateless widgets, hot reload vs hot restart (ou até mesmo quando se deve gerar nova build em debug), bibliotecas para persistencia, chamada http, o pacote do firebase como analytics e crashlytics, mecionar que é possível rodar ia local dentro do aplicativo (offlime) utilizando o pacote certo, etc (isso daria para fazer um pequeno chat com ia), daria para falar tambem sobre quando é preciso fazer código nativo e como a ponte é feita - focar em android e ios, falar sobre testes unitarios e de widget. 

sobre o dart daria para falar sobre como ela é multiparadigma, fortemente tipada, sem reflexão, sem herança multipla. é uma linguagem segura, porém exige que a serialização/desserialização seja feita manualmente ou por bibliotecas de geração de código, o que é, de certa forma, uma desvantagem - não possui reflexão (explicar o que é isso tambem)

## Resposta

Feito. O que mudou:

**Header padronizado + ícones no canto.** Criei um `SlideScaffold` compartilhado
([slide_scaffold.dart](lib/presentation/widgets/slide_scaffold.dart)) que todo slide agora usa: ele
fixa o header no topo (antes a Column inteira era centralizada verticalmente, então o header
"flutuava" em alturas diferentes dependendo do tamanho do conteúdo) e numera o header
automaticamente a partir da posição do slide na lista (`SlideIndexScope`), então inserir/remover/
reordenar slides não exige mais renumerar nada à mão. O canto superior direito virou um slot
genérico (`cornerVisual`): a sua foto usa esse slot no slide de intro, e um novo
`FlutterDartBadges` (logo do Flutter + logo do Dart, baixado de dart.dev) usa o mesmo slot em todo
slide de Flutter/Dart.

**A lista virou 4 slides.** O slide único "Flutter & Dart" virou um slide por item: "Um código,
todas as plataformas", "Dart: AOT e JIT", "Flutter desenha a própria UI" e "Hot reload" — este
último incorporou o bullet "este slide, inclusive, está rodando com hot reload", agora explicado
com mais contexto (por que só funciona em debug, quando não serve).

**Bloco de código.** Adicionei um `CodeBlock` ([code_block.dart](lib/presentation/widgets/code_block.dart))
com destaque de sintaxe (comentários, strings, números, palavras-chave) feito na mão com regex —
decidi não trazer um pacote de syntax highlighting porque o deck só precisa de uns poucos
snippets curtos que eu mesmo escrevo, então o pacote novo não se pagava. Usado nos slides de
StatefulWidget, platform channel e serialização manual.

**Grupo "Flutter avançado" (8 slides, nova cor de destaque):** StatelessWidget vs StatefulWidget
(com exemplo de código), hot reload vs hot restart vs novo build, persistência (shared_preferences/
sqflite/drift/Hive/Isar), HTTP (http/dio), Firebase (Analytics/Crashlytics), IA local offline
(flutter_gemma, viabilizando um chat sem backend), ponte com código nativo via MethodChannel
(Android/Kotlin e iOS/Swift, com exemplo de código) e testes unitários/de widget.

**Grupo "Dart" (2 slides):** características da linguagem (multiparadigma, fortemente tipada, sem
herança múltipla, null safety) e um slide dedicado a "Dart não tem reflexão" — explico o que é
reflexão, por que o Dart não tem (custo de binário/startup em AOT e web), e a consequência prática:
(de/)serialização manual ou via geração de código (json_serializable/freezed), com um exemplo de
`fromJson`/`toJson` escrito à mão.

O deck foi de 4 para 17 slides. `flutter analyze` no projeto inteiro não encontrou problemas.
Tentei novamente abrir o app e tirar um screenshot para conferir visualmente o resultado (mesmo
bloqueio da vez passada: `screencapture` continua sem permissão de gravação de tela neste
ambiente) — não consegui verificar visualmente o layout final, só a estrutura do código e a
ausência de erros de análise/compilação.
