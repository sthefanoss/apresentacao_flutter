import 'package:flutter/widgets.dart';

import '../../presentation_theme.dart';
import '../../slide.dart';
import '../../widgets/bullet_list.dart';
import '../../widgets/slide_scaffold.dart';
import '../../widgets/tic_tac_toe_demo.dart';

final ticTacToeSlide = Slide(
  semanticId: 'marionette-tic-tac-toe',
  eyebrow: 'MARIONETTE',
  title: 'Interaja comigo agora',
  accentColor: PresentationColors.marionetteAccent,
  builder: (context) => SlideScaffold(
    eyebrow: 'MARIONETTE',
    title: 'Interaja comigo agora',
    accentColor: PresentationColors.marionetteAccent,
    subtitle: 'Grite uma jogada — o agente acha a célula e toca nela',
    body: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BulletList(
          accentColor: PresentationColors.marionetteAccent,
          items: [
            'Cada célula é um botão com uma key própria — tic_tac_toe_'
                'cell_0 até tic_tac_toe_cell_8, lidas da esquerda pra '
                'direita, de cima pra baixo',
            'Peça uma jogada em voz alta — o agente chama '
                'get_interactive_elements, acha a célula certa e usa '
                'tap() nela, sem eu tocar na tela',
            'O tabuleiro é um StatefulWidget comum: cada tap chama '
                'setState() e o Flutter redesenha — nada de mágica nova',
          ],
        ),
        SizedBox(height: PresentationSpacing.lg),
        Center(
          child: TicTacToeDemo(accentColor: PresentationColors.marionetteAccent),
        ),
      ],
    ),
  ),
);
