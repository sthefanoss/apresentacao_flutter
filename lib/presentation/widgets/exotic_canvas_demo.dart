import 'dart:math' as math;

import 'package:flutter/material.dart';

/// A small live CustomPainter animation for the CustomPaint slide — the
/// point being made is "you can draw this yourself", so the slide shows
/// one actually drawing, rotating live via hot reload like everything else
/// in this deck.
class ExoticCanvasDemo extends StatefulWidget {
  const ExoticCanvasDemo({super.key, required this.color, this.size = 220});

  final Color color;
  final double size;

  @override
  State<ExoticCanvasDemo> createState() => _ExoticCanvasDemoState();
}

class _ExoticCanvasDemoState extends State<ExoticCanvasDemo>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 14),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) => CustomPaint(
          painter: _SpirographPainter(t: _controller.value, color: widget.color),
        ),
      ),
    );
  }
}

class _SpirographPainter extends CustomPainter {
  _SpirographPainter({required this.t, required this.color});

  final double t;
  final Color color;

  static const _petals = 7;
  static const _pathSteps = 240;
  static const _orbiters = 5;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.shortestSide / 2;

    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(t * 2 * math.pi);

    final petalPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(_rosePath(radius), petalPaint);

    for (var i = 0; i < _orbiters; i++) {
      final theta = t * 2 * math.pi * (i + 1) * 0.6;
      final orbitRadius = radius * (0.3 + 0.12 * i);
      final dot = Offset(orbitRadius * math.cos(theta), orbitRadius * math.sin(theta));
      canvas.drawCircle(dot, 4, Paint()..color = color.withValues(alpha: 0.8));
    }

    canvas.restore();
  }

  Path _rosePath(double radius) {
    final path = Path();

    for (var i = 0; i <= _pathSteps; i++) {
      final theta = i / _pathSteps * 2 * math.pi;
      final r = radius * (0.35 + 0.65 * (0.5 + 0.5 * math.cos(_petals * theta)));
      final point = Offset(r * math.cos(theta), r * math.sin(theta));
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    return path;
  }

  @override
  bool shouldRepaint(covariant _SpirographPainter oldDelegate) => oldDelegate.t != t;
}
