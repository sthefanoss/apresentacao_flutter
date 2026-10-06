# Prompt 015

Data: 2026-10-06
Ferramenta: Claude Code

---

## Pedido

certo, agora atualize o CLAUDE.md para apenas registrar prompts que não forem os de pedir para
jogar o jogo da velha ou o de interagir no formulário;

em outras palavras, apenas prompts que modificam o projeto devem ser salvos - logo, como este
está modificando o CLAUDE.md, deve ser salvo também!

além disso, faça um AGENTS.md apontando para o CLAUDE.md, visto que este arquivo é utilizado por
outras ias

## Resposta

Feito. No `CLAUDE.md`, a seção "Prompt log" agora pula o registro pra qualquer mensagem que só
peça pra interagir com o app já rodando (tocar, digitar, rolar, ler a tela — como nos slides de
jogo da velha e do formulário de login): nada no repositório muda, então não há o que registrar.
Toda outra mensagem continua sendo logada normalmente, inclusive esta.

Criei também o `AGENTS.md`, só um ponteiro de uma linha pro `CLAUDE.md`, já que é o nome de
arquivo que outras ferramentas de IA (Codex, Copilot, etc.) procuram por convenção — evita duplicar
a regra em dois lugares.

Antes de commitar, rodei o `instructions-reviewer` sobre o diff (gate obrigatório pra edição de
arquivo de instrução) e ele encontrou 3 problemas reais, que corrigi:
1. Minha primeira tentativa criava uma contradição — eu tinha restrito a regra a "mensagens que
   pedem uma mudança", mas mantive a frase "questions included" (que implica logar até perguntas
   sem mudança nenhuma). Revertido pra redação original, deixando só o novo parágrafo de exceção
   cuidar do caso de interação ao vivo.
2. Uma frase redundante ("Default to logging; skip only quando...") repetia o que a condição
   anterior já deixava claro — removida.
3. O template tinha "Ferramenta: Claude Code" fixo; agora que o `AGENTS.md` convida outras
   ferramentas a seguir o mesmo arquivo, isso faria qualquer outro agente registrar a ferramenta
   errada — troquei por um placeholder genérico.
