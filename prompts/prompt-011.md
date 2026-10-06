# Prompt 011

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

eu criaria um slide separado para o stateful e o stateless widgets, explicando quando cada um é
usado; e explicando melhor sobre o que é o estado e a necessidade do set state

## Resposta

Separei o slide "StatelessWidget vs StatefulWidget" em dois:

- **StatelessWidget**: imutabilidade (campos `final`, definidos uma vez), quando `build()` roda de
  novo, quando usar (UI que só depende dos parâmetros recebidos, sem estado próprio), com um
  exemplo de código (`Greeting`).
- **StatefulWidget**: expliquei "estado" diretamente — qualquer dado que pode mudar durante a vida
  do widget e afeta o que é desenhado (um contador, texto de um campo, painel aberto/fechado) — e
  por que o `setState()` é necessário: ele não é "a variável mudou", é o aviso explícito pro Flutter
  rodar `build()` de novo, porque sem essa chamada o framework não tem como saber que a tela ficou
  desatualizada. Mantive o exemplo do `Counter` aqui, já que ele ilustra exatamente isso.

Os dois foram posicionados onde o slide combinado estava (logo no início do grupo "Flutter
avançado", antes de BuildContext), então a numeração dos slides seguintes só deslocou
automaticamente — nenhum outro arquivo precisou de edição por causa da inserção.

Validei com o mesmo teste de navegação descartável das vezes anteriores (não ficou no repo): os 24
slides passam sem exceção. `flutter analyze` também ficou limpo.
