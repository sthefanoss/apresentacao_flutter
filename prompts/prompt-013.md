# Prompt 013

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

sobre o marionete, ele é meio que um dos principais temas da palestra, e está totalmente raso;

coloque mais slides explicando sobre como tem sido utilizar ferramentas agenticas para
desenvolver, fale do claude code, antigravity, codex, copilot, etc;

fale sobre o que sao mcps, como os agente se comunincam com eles e porque eles agilizam tanto o
nosso desenvolvimento;

entao explique quais sao as funcionalidades que o marionete proporciona, consulte a documentacao
dele e levante as mais relevantes;

faça um slide explicando como "instalar", seja no projeto flutter e seja nas ferramentas
agenticas

por ultimo, a ideia é permitir que os participantes possam sugerir dicas para alterar este
projeto! entào mostrarei a pasta com os prompts e tudo mais, para que eles possam sugerir edições

## Resposta

Expandi bastante a seção do marionette — ela virou um grupo de 6 slides em
`lib/presentation/slides/marionette/` (reorganizei a pasta nesse padrão, igual aos outros grupos
do deck):

1. **"Desenvolvendo com ferramentas agênticas"** — contexto amplo: Claude Code, GitHub Copilot,
   OpenAI Codex, Cursor, Google Antigravity, a diferença pro autocomplete clássico, e que esta
   própria talk foi construída assim.
2. **"O que são MCPs"** — o protocolo em si: tools/resources/prompts, transporte via stdio/HTTP, o
   fato de que o agente nunca chama a ferramenta direto (quem chama é o host), e por que isso
   agiliza — um servidor MCP funciona em qualquer ferramenta compatível, sem integração dedicada
   por ferramenta.
3. **marionette_flutter + marionette_mcp** (o slide original, só movido de lugar).
4. **"O que o marionette oferece"** — fui direto na documentação oficial do pacote (o monorepo
   está clonado localmente em `~/dev/marionette_mcp`) pra listar as ferramentas reais, não
   inventar: `connect`/`disconnect`, `get_interactive_elements`, `tap`/`enter_text`/`scroll_to`,
   `take_screenshots`/`get_logs`/`hot_reload`, e mencionei o `marionette_cli` como alternativa pra
   ambientes que não permitem MCP.
5. **"Instalando o marionette"** — `flutter pub add marionette_flutter` + inicializar o binding (com
   o mesmo trecho de código que já está no `main.dart` deste projeto), `dart pub global activate
   marionette_mcp`, e como registrar no Claude Code/Cursor/Antigravity/Copilot.
6. **"Sugira uma mudança"** — o fechamento que você pediu: explica que cada prompt desta talk virou
   um arquivo rastreável em `prompts/`, convida a plateia a propor uma mudança, e que ela vai virar
   o próximo prompt numerado, ao vivo, antes do slide de perguntas.

Validei com o mesmo teste de navegação descartável: os 30 slides passam sem exceção. `flutter
analyze` também ficou limpo.
