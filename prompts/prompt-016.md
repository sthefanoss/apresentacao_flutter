# Prompt 016

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

atualize os campos de texto para que eu possa selecionalos com o mouse na apresentaca;

no slide 5 é dito que o hotrestart permite atualizacoes de codigo nativo; isso é verdade? porque,
pela minha experiencia, isso exige uma build nova. pesquise na internet e nao assuma - se for
falso, atualize o texto e retire essa parte (isso será explicado melhor depois)

## Resposta

Pesquisei antes de mexer em qualquer coisa: você está certo, é falso. A documentação oficial do
Flutter (docs.flutter.dev/tools/hot-reload) confirma que o hot restart só recarrega código Dart na
VM já em execução — mudança em código nativo (Kotlin/Java/Swift/Obj-C) exige um full restart
mesmo, porque é aí que o nativo é recompilado. Tirei "ou em código nativo" do bullet do slide 5
("Hot reload"); o bullet agora diz só que mudanças em `main()` ou em variáveis globais/estáticas
pedem hot restart. O slide "Hot reload vs hot restart vs novo build" (mais à frente) já estava
certo sobre isso, então é lá que a explicação completa fica.

Sobre os campos de texto: em vez de converter cada `Text` pra `SelectableText` um por um em
dezenas de arquivos, envolvi a área dos slides (o `PageView`, em `presentation_screen.dart`) num
`SelectionArea` — o Flutter faz todo texto descendente de um `SelectionArea` ficar selecionável
com o mouse de graça, sem precisar tocar em `BulletList`, `CodeBlock`, nem nenhum dos ~15 arquivos
de slide. Era a opção mais simples que resolvia o pedido inteiro com uma mudança de poucas linhas
num único lugar.

O risco real era esse `SelectionArea` quebrar os toques do jogo da velha e do formulário de login
(ambos dependem de tap/enter_text funcionando dentro da mesma área agora envolvida em seleção de
texto) — então, antes de aceitar como pronto, testei os dois de verdade dentro de um
`SelectionArea`: tocar numa célula ainda marca e alterna o turno, digitar e-mail/senha e tocar
"Entrar" ainda mostra a mensagem de boas-vindas. Também rodei o teste de navegação do deck inteiro
de novo. Tudo passou, nenhum teste ficou no repo, e `flutter analyze` ficou limpo.
