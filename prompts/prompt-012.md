# Prompt 012

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

crie um segundo slide do stateful widget para falar sobre seu ciclo de vida - isso é parte do
coracao do flutter

## Resposta

Criado. "StatefulWidget: ciclo de vida" entrou logo depois do slide de StatefulWidget, antes de
BuildContext, cobrindo a sequência completa: `initState()` (uma vez, antes do 1º build —
inicializar controllers/streams), `didChangeDependencies()` (depois do initState e sempre que um
InheritedWidget do qual depende muda — primeiro lugar seguro pra usar `Theme.of`/`MediaQuery.of`),
`build()` (toda vez que precisa redesenhar), `didUpdateWidget(oldWidget)` (quando o pai recria o
widget com props novas) e `dispose()` (uma vez, ao sair da árvore — cancelar controllers/streams/
timers). Incluí um bloco de código com o esqueleto dos overrides, na ordem, com um comentário em
cada um lembrando quando roda e pra que serve.

Validado com o mesmo teste de navegação descartável das vezes anteriores: os 25 slides passam sem
exceção. `flutter analyze` também ficou limpo.
