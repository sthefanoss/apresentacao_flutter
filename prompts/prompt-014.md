# Prompt 014

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

dá para colocar exemplos em diferentes slides, eu falo para voce interagir comigo na hora, voce
apenas fica observando a lista de widgets do slide atual e verifica se ele está modificando ou
nao;

entao pode ser o jogo da velha inicialmente, depois podemos fazer um formulario para simular
login

## Resposta

Criados dois slides interativos no grupo marionette, logo depois de "Instalando o marionette" e
antes de "Sugira uma mudança":

**"Interaja comigo agora"** (jogo da velha): tabuleiro 3x3 de verdade, cada célula é um
`ElevatedButton` com key própria (`tic_tac_toe_cell_0` a `tic_tac_toe_cell_8`), detecta vitória nas
8 combinações possíveis, tem botão de reiniciar. Peça uma jogada em voz alta e o agente acha a
célula certa via `get_interactive_elements` e usa `tap()` nela — dá pra ver o X/O aparecer na hora.

**"Agora com texto: um login falso"**: campo de e-mail, campo de senha (com `obscureText`) e botão
"Entrar", cada um com key própria. Validação propositalmente boba (e-mail com "@", senha com 4+
caracteres) só pra ter uma mensagem de status que muda — dita um e-mail e senha, o agente usa
`enter_text()` em cada campo e `tap()` no botão.

Os dois widgets (`TicTacToeDemo`, `LoginFormDemo`) ficaram em arquivos próprios, separados do
slide que os usa — mesmo padrão do `ExoticCanvasDemo` do slide de CustomPaint.

Como essas são as primeiras peças do deck com lógica de verdade (não só bullets), escrevi um teste
descartável cobrindo os cenários reais antes de aceitar como pronto — tocar uma célula marca e
alterna o turno, três em linha declara vencedor, reiniciar limpa o tabuleiro, login válido mostra
a mensagem de boas-vindas, login inválido mostra a mensagem de erro. Os 4 testes passaram, mais o
teste de navegação do deck inteiro (32 slides agora). `flutter analyze` ficou limpo. Nenhum teste
ficou no repo.
