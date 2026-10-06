# Prompt 010

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

também quero incluir os seguintes temas:
- material app e citar os principais componentes prontos;
- cuppertino app e citar os principais componetntes prontos;
- após esses dois, mencionar que, como ssão renderizados num canvas, eles funcionam em qualquer plataforma - inclusive ios funciona no android e vice-versa; falar tambem que o trabalho atual da equipe do flutter é desacoplar esses componentes para permitir que o flutter tenha atualizaçoes mais rapidas - transformando-os em pacotes externos.
- aproveitando sobre canvas, seria legal falar do custom paint e mostras umas animacoes exoticas

## Resposta

Adicionados 4 slides no grupo "Flutter avançado", logo depois de "BuildContext" e antes de "Hot
reload vs hot restart vs novo build":

- **MaterialApp**: raiz do app Material, Scaffold, e os componentes prontos mais usados (TextField,
  Checkbox, ElevatedButton, SnackBar, AlertDialog, Card, ListTile...).
- **CupertinoApp**: a mesma ideia no estilo iOS — CupertinoPageScaffold, CupertinoNavigationBar,
  CupertinoButton, CupertinoSwitch, CupertinoTabScaffold, CupertinoAlertDialog.
- **"Qualquer widget roda em qualquer plataforma"**: a síntese que você pediu — como Material e
  Cupertino são só desenho num canvas, não widgets nativos, um CupertinoButton roda liso no Android
  e vice-versa; e que o time do Flutter está trabalhando para desacoplar os dois do núcleo do
  framework, movendo-os para pacotes externos, pra desligar as atualizações deles do ciclo de
  release do engine.
- **CustomPaint**: explica CustomPainter/paint()/shouldRepaint com um snippet de código, e — já que
  o pedido era "mostrar" animações exóticas — coloquei uma animação de verdade rodando ao lado do
  código: um spirograph (rosácea girando + pontos orbitando) desenhado com CustomPainter e
  AnimationController, sem nenhum pacote novo, só Canvas puro mesmo.

Antes de fechar, escrevi dois testes de widget descartáveis (não ficaram no repo) pra validar de
verdade, já que não consigo tirar screenshot neste ambiente: um pump isolado do slide de
CustomPaint rodando a animação por 14s simulados, e um que navega a apresentação inteira, slide por
slide, pelos mesmos botões que o app usa. O primeiro, na tentativa inicial, deu overflow — mas era
falha do meu próprio harness de teste (faltava o SingleChildScrollView que o app de verdade usa),
não do slide; corrigido isso, os 23 slides passaram sem nenhuma exceção. `flutter analyze` também
seguiu limpo.
