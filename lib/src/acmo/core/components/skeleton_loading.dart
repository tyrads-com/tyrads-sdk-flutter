import 'package:flutter/material.dart';

class AcmoCustomSkeleton extends StatefulWidget {
  const AcmoCustomSkeleton({
    super.key,
    this.height = 50,
    required this.width,
    this.borderRadius,
  });

  final double height;
  final double width;
  final double? borderRadius;

  @override
  State<AcmoCustomSkeleton> createState() => _AcmoCustomSkeletonState();
}

class _AcmoCustomSkeletonState extends State<AcmoCustomSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: const Color(0xFFE0E2E7),
      end: const Color(0xFFC2C6CE),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) => Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: _colorAnimation.value,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        ),
      ),
    );
  }
}

class AcmoSkeletonLoading extends StatelessWidget {
  const AcmoSkeletonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFF0F1F3),
        child: AcmoCustomSkeleton(
          width: double.maxFinite,
          height: 42,
          borderRadius: 42,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: AcmoCustomSkeleton(
                height: 18,
                width: 120,
              ),
            ),
            Row(
              spacing: 16,
              children: [
                const AcmoCustomSkeleton(
                  height: 225,
                  width: 16,
                ),
                AcmoCustomSkeleton(
                  height: 247,
                  width: MediaQuery.of(context).size.width - 64,
                ),
                const AcmoCustomSkeleton(
                  height: 225,
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.center,
              child: AcmoCustomSkeleton(
                width: 48,
                height: 8,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  const AcmoCustomSkeleton(
                    height: 18,
                    width: 120,
                  ),
                  ...List.generate(
                    4,
                    (index) => const AcmoCustomSkeleton(
                      height: 270,
                      width: double.maxFinite,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
