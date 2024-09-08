import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uniqtrack/core/common/context_extension.dart';

class AppCircleProgressIndicator extends StatefulWidget {
  final Color? loadingIndicatorColor;
  final Color? activeLoadingIndicatorColor;

  const AppCircleProgressIndicator({
    super.key,
    this.loadingIndicatorColor,
    this.activeLoadingIndicatorColor,
  });

  @override
  State<AppCircleProgressIndicator> createState() =>
      _AppCircleProgressIndicatorState();
}

class _AppCircleProgressIndicatorState extends State<AppCircleProgressIndicator>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _rotationTween =
      Tween(begin: -pi / 2, end: pi + (pi / 2));
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return CustomPaint(
            painter: _EvromedCircleProgressPainter(
              lineWidth: 5,
              position: _rotationTween.evaluate(_controller),
              loadingIndicatorColor:
                  widget.loadingIndicatorColor ?? context.colorScheme.secondary,
              activeLoadingIndicatorColor: widget.activeLoadingIndicatorColor ??
                  context.colorScheme.onSecondary,
            ),
          );
        },
      ),
    );
  }
}

class _EvromedCircleProgressPainter extends CustomPainter {
  final double lineWidth;
  final double position;
  final Color loadingIndicatorColor;
  final Color activeLoadingIndicatorColor;

  const _EvromedCircleProgressPainter({
    required this.position,
    required this.lineWidth,
    required this.loadingIndicatorColor,
    required this.activeLoadingIndicatorColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final arcRect = calculateArcsRect(size);
    drawArc(canvas, arcRect);
    drawIndicator(canvas, arcRect);
  }

  void drawIndicator(Canvas canvas, Rect arcRect) {
    final paint = Paint();
    paint.color = loadingIndicatorColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = lineWidth;
    paint.strokeCap = StrokeCap.round;

    canvas.drawArc(
      arcRect,
      position,
      pi / 2,
      false,
      paint,
    );
  }

  void drawArc(Canvas canvas, Rect arcRect) {
    final paint = Paint();
    paint.color = activeLoadingIndicatorColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = lineWidth;
    paint.strokeCap = StrokeCap.round;

    canvas.drawArc(
      arcRect,
      -pi,
      pi * 2,
      false,
      paint,
    );
  }

  Rect calculateArcsRect(Size size) {
    const linesMargin = 3;
    final offset = lineWidth / 2 + linesMargin;
    final arcRect = Offset(offset, offset) &
        Size(size.width - offset * 2, size.height - offset * 2);
    return arcRect;
  }

  @override
  bool shouldRepaint(_EvromedCircleProgressPainter oldDelegate) {
    return oldDelegate.lineWidth != lineWidth ||
        oldDelegate.position != position;
  }
}
