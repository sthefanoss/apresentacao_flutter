# Prompt 009

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

no flutter avançado, é bom incluir um slide para falar sobre o contexto, pois ele é extremamente importante para o flutter

## Resposta

Adicionado. Criei o slide "BuildContext" no grupo "Flutter avançado", logo depois de
"StatelessWidget vs StatefulWidget" — faz mais sentido ali do que mais adiante, já que é um
conceito fundamental sobre a árvore de widgets, antes de entrar em ferramentas (hot reload,
pub.dev) e pacotes específicos (persistência, HTTP, Firebase...).

Conteúdo: o que é o BuildContext (posição do widget na árvore, não configuração), como `.of(context)`
sobe a árvore procurando o InheritedWidget mais próximo, o bug clássico do "context errado"
(`Scaffold.of(context)` falhando logo após criar o próprio Scaffold) e o cuidado com async gap —
nunca usar o context depois de um `await` sem checar `context.mounted`. `flutter analyze` no
projeto inteiro não encontrou problemas.
