import 'package:flutter/material.dart';

import '../presentation_theme.dart';

const _winningLines = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], // rows
  [0, 3, 6], [1, 4, 7], [2, 5, 8], // columns
  [0, 4, 8], [2, 4, 6], // diagonals
];

/// A live tic-tac-toe board for the audience to direct the agent against,
/// via marionette's tap tool — every cell and the reset button carry a
/// stable key so get_interactive_elements/tap can target them by name.
class TicTacToeDemo extends StatefulWidget {
  const TicTacToeDemo({super.key, required this.accentColor});

  final Color accentColor;

  @override
  State<TicTacToeDemo> createState() => _TicTacToeDemoState();
}

class _TicTacToeDemoState extends State<TicTacToeDemo> {
  final _board = List<String?>.filled(9, null);
  var _currentPlayer = 'X';

  List<int>? get _winningLine {
    for (final line in _winningLines) {
      final [a, b, c] = line;
      if (_board[a] != null && _board[a] == _board[b] && _board[b] == _board[c]) {
        return line;
      }
    }
    return null;
  }

  String get _status {
    final winningLine = _winningLine;
    if (winningLine != null) return '${_board[winningLine.first]} venceu!';
    if (_board.every((cell) => cell != null)) return 'Empate!';
    return 'Vez de $_currentPlayer';
  }

  void _tapCell(int index) {
    if (_board[index] != null || _winningLine != null) return;

    setState(() {
      _board[index] = _currentPlayer;
      _currentPlayer = _currentPlayer == 'X' ? 'O' : 'X';
    });
  }

  void _reset() {
    setState(() {
      _board.fillRange(0, _board.length, null);
      _currentPlayer = 'X';
    });
  }

  @override
  Widget build(BuildContext context) {
    final winningLine = _winningLine;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          _status,
          key: const ValueKey('tic_tac_toe_status_text'),
          style: PresentationText.heading.copyWith(color: widget.accentColor),
        ),
        const SizedBox(height: PresentationSpacing.sm),
        SizedBox(
          width: 240,
          height: 240,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: PresentationSpacing.sm,
              mainAxisSpacing: PresentationSpacing.sm,
            ),
            itemCount: _board.length,
            itemBuilder: (context, index) {
              final isWinningCell = winningLine?.contains(index) ?? false;

              return ElevatedButton(
                key: ValueKey('tic_tac_toe_cell_$index'),
                onPressed: () => _tapCell(index),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isWinningCell
                      ? widget.accentColor.withValues(alpha: 0.35)
                      : PresentationColors.surface,
                  foregroundColor: PresentationColors.textPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: widget.accentColor.withValues(alpha: 0.4)),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Text(_board[index] ?? '', style: PresentationText.heading),
              );
            },
          ),
        ),
        const SizedBox(height: PresentationSpacing.sm),
        TextButton(
          key: const ValueKey('tic_tac_toe_reset'),
          onPressed: _reset,
          child: const Text('Reiniciar', style: PresentationText.caption),
        ),
      ],
    );
  }
}
