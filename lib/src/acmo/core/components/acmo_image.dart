import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/skeleton_loading.dart';

// ignore: unused_import
import 'package:tyrads_sdk/src/acmo/core/components/web_image.dart'
    if (dart.library.io) 'package:tyrads_sdk/src/acmo/core/components/web_image_stub.dart';

class AcmoNetworkImage extends StatelessWidget {
  const AcmoNetworkImage({
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
  Widget build(BuildContext context) {
    return kIsWeb
        ? AcmoWebImage(
            url: url,
            width: width,
            height: height,
            fit: fit,
          )
        : CachedNetworkImage(
            imageUrl: url,
            width: width,
            height: height,
            fit: fit ?? BoxFit.cover,
            placeholder: (context, url) => AcmoCustomSkeleton(
              width: width ?? 50,
              height: height ?? 50,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
  }
}
