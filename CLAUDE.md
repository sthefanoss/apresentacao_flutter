# apresentacao_flutter

Flutter app used as a slide deck for a talk (intro, Flutter & Dart, marionette, live Q&A).

## Prompt log

In the main conversation (sub-agents skip this), for every message the user types, questions
included: write `prompts/prompt-NNN.md` with the next unused zero-padded number, formatted as

    # Prompt NNN

    Data: <YYYY-MM-DD>
    Ferramenta: Claude Code

    ---

    ## Pedido

    <the user's prompt, verbatim>

    ## Resposta

    <your final reply text for this turn, verbatim>

Write `## Pedido` before any other edit or command that turn. Last, write your final reply
under `## Resposta`, commit, then send that same text unchanged; it cannot report the commit.
If the commit or push fails, append the error to the reply only.

Commit, staging by path (`git add <paths>`, never `-A` or `.`), every repo file you created,
edited, or deleted this turn plus files your commands changed, this log included, in one commit
named `prompt-NNN: <summary>`. Do not push unless the user asks; when they asked this turn,
push after this commit.
