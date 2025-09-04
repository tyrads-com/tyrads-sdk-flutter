// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/skeleton_loading.dart';

import 'package:web/web.dart' as web;
import 'dart:ui_web' as ui;

class AcmoWebImage extends StatefulWidget {
  const AcmoWebImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  State<AcmoWebImage> createState() => _AcmoWebImageState();
}

class _AcmoWebImageState extends State<AcmoWebImage> {
  String objectFitToCss(BoxFit? fit) {
    switch (fit) {
      case BoxFit.contain:
        return 'contain';
      case BoxFit.cover:
        return 'cover';
      case BoxFit.fill:
        return 'fill';
      case BoxFit.fitHeight:
      case BoxFit.fitWidth:
      case BoxFit.scaleDown:
        return 'scale-down';
      case BoxFit.none:
        return 'none';
      default:
        return 'cover';
    }
  }

  String? _viewType;
  bool _isLoaded = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _viewType = 'smart_image_${identityHashCode(this)}';
    ui.platformViewRegistry.registerViewFactory(_viewType!, (int viewId) {
      final img = web.HTMLImageElement();

      img.src = widget.url;

      img.style.objectFit = objectFitToCss(widget.fit);
      img.style.width = widget.width != null ? '${widget.width}px' : '100%';
      img.style.height = widget.height != null ? '${widget.height}px' : '100%';
      img.decoding = 'async';

      img.onLoad.listen((_) {
        if (mounted) {
          setState(() {
            _isLoaded = true;
          });
        }
      });

      img.onError.listen((e) {
        if (mounted) {
          setState(() {
            _hasError = true;
          });
        }
      });

      return img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (!_hasError)
            Positioned.fill(child: HtmlElementView(viewType: _viewType!)),
          if (!_isLoaded && !_hasError)
            Positioned.fill(
              child: Center(
                child: AcmoCustomSkeleton(
                  width: widget.width ?? 50,
                  height: widget.height ?? 50,
                ),
              ),
            ),
          if (_hasError)
            const Positioned.fill(
              child: Center(child: Icon(Icons.error_outline)),
            ),
        ],
      ),
    );
  }
}
