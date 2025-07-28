import 'package:flutter/material.dart';
import 'dart:math' as math;

class AcmoAnimatedStar extends StatefulWidget {
  const AcmoAnimatedStar({super.key, required this.size});

  final double size;

  @override
  State<AcmoAnimatedStar> createState() => _AcmoAnimatedStarState();
}

class _AcmoAnimatedStarState extends State<AcmoAnimatedStar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isMounted = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _animation = Tween<double>(begin: -2.0, end: 2.0).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (!_isMounted) return;

      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 600), () {
          if (_isMounted && mounted) _controller.reverse();
        });
      } else if (status == AnimationStatus.dismissed) {
        Future.delayed(const Duration(milliseconds: 600), () {
          if (_isMounted && mounted) _controller.forward();
        });
      }
    });
  }

  @override
  void dispose() {
    _isMounted = false; 
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final double gradientX = _animation.value;
          final Alignment begin = Alignment(gradientX, 0.9);
          final Alignment end = Alignment(gradientX + 0.9, 0.1);

          return CustomPaint(
            size: Size(widget.size, widget.size),
            painter: StarPainter(
              begin: begin,
              end: end,
              colors: const [
                Color(0xFFFFC14A),
                Color(0xFFFFFDE7),
                Color(0xFFF4A004),
              ],
            ),
          );
        },
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  final Alignment begin;
  final Alignment end;
  final List<Color> colors;

  StarPainter({
    required this.begin,
    required this.end,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double outerRadius = centerX * 0.9;
    final double innerRadius = centerX * 0.6;

    final Path path = Path();

    for (int i = 0; i < 10; i++) {
      final double radius = i % 2 == 0 ? outerRadius : innerRadius;
      final double angle = (i * 36) * (2 * math.pi / 180) - (math.pi / 2);

      final double x = centerX + radius * math.cos(angle);
      final double y = centerY + radius * math.sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawShadow(path, Colors.black.withValues(alpha: 0.16), 20.0, true);

    final Paint paint = Paint()
      ..shader = LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
        stops: const [0.0, 0.5, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant StarPainter oldDelegate) {
    return oldDelegate.begin != begin ||
        oldDelegate.end != end ||
        oldDelegate.colors != colors;
  }
}
