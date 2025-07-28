import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoCarouselSlider extends StatefulWidget {
  const AcmoCarouselSlider({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.autoPlayInterval = const Duration(seconds: 5),
    this.showIndicator = true,
    this.infiniteScroll = true,
    this.indicatorActiveColor,
    this.indicatorInactiveColor,
    this.indicatorSize = 8.0,
    this.indicatorSpacing = 4.0,
    this.viewportFraction = 0.9,
    this.scaleFactor = 0.94,
    this.initialPage = 0,
    this.onPageChanged,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final Duration autoPlayInterval;
  final bool showIndicator;
  final bool infiniteScroll;
  final Color? indicatorActiveColor;
  final Color? indicatorInactiveColor;
  final double indicatorSize;
  final double indicatorSpacing;
  final double viewportFraction;
  final double scaleFactor;
  final int initialPage;
  final ValueChanged<int>? onPageChanged;

  @override
  State<AcmoCarouselSlider> createState() => _AcmoCarouselSliderState();
}

class _AcmoCarouselSliderState extends State<AcmoCarouselSlider> {
  late PageController _pageController;
  Timer? _timer;
  late ValueNotifier<int> _currentIndex;

  int _getLoopedIndex(int index, int length) {
    return ((index % length) + length) % length;
  }

  @override
  void initState() {
    _currentIndex = ValueNotifier<int>(widget.initialPage % widget.itemCount);
    _pageController = PageController(
      initialPage: widget.initialPage,
      viewportFraction: widget.viewportFraction,
    );

    if (widget.itemCount > 1 && widget.autoPlayInterval > Duration.zero) {
      _timer = Timer.periodic(widget.autoPlayInterval, (Timer timer) {
        if (_pageController.hasClients && widget.itemCount > 0) {
          _animateToNextPage();
        }
      });
    }
    super.initState();
  }

  void _animateToNextPage() {
    if (widget.itemCount > 0) {
      _pageController.animateToPage(
        _pageController.page!.round() + 1,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.infiniteScroll ? null : widget.itemCount,
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            final loopedIndex = _getLoopedIndex(index, widget.itemCount);
            return AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 1.0;
                if (_pageController.position.haveDimensions) {
                  value = (_pageController.page! - index).abs();
                  value = Curves.easeOut.transform(min(value, 1.0));
                  value = widget.scaleFactor +
                      (1 - widget.scaleFactor) * (1 - value);
                } else {
                  value =
                      index == _currentIndex.value ? 1.0 : widget.scaleFactor;
                }

                return Center(
                  child: SizedBox(
                    height: Curves.easeOut.transform(value) *
                        MediaQuery.of(context).size.height *
                        0.8,
                    width: Curves.easeOut.transform(value) *
                        MediaQuery.of(context).size.width *
                        widget.viewportFraction,
                    child: Transform.scale(
                      scale: value,
                      child: child,
                    ),
                  ),
                );
              },
              child: widget.itemBuilder(context, loopedIndex),
            );
          },
          onPageChanged: (index) {
            final loopedIndex = _getLoopedIndex(index, widget.itemCount);
            _currentIndex.value = loopedIndex;
            widget.onPageChanged?.call(loopedIndex);
          },
        ),
        if (widget.showIndicator && widget.itemCount > 0)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ValueListenableBuilder<int>(
                valueListenable: _currentIndex,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(widget.itemCount, (index) {
                      return TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 300),
                        tween: Tween<double>(
                            begin: 1.0, end: value == index ? 1.2 : 1.0),
                        builder: (context, double scale, child) {
                          return Transform.scale(
                            scale: scale,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: widget.indicatorSpacing),
                              width: widget.indicatorSize,
                              height: widget.indicatorSize,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: value == index
                                    ? widget.indicatorActiveColor ??
                                        Tyrads.instance.colorPremiumFg
                                    : widget.indicatorInactiveColor ??
                                        Tyrads.instance.colorPremiumFg?.withValues(alpha: 0.3),
                              ),
                            ),
                          );
                        },
                      );
                    }),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
