/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/charge-can.png
  AssetGenImage get chargeCan =>
      const AssetGenImage('assets/images/charge-can.png');

  /// File path: assets/images/clock.png
  AssetGenImage get clock => const AssetGenImage('assets/images/clock.png');

  /// File path: assets/images/empty_icon.png
  AssetGenImage get emptyIcon =>
      const AssetGenImage('assets/images/empty_icon.png');

  /// File path: assets/images/faqs.png
  AssetGenImage get faqs => const AssetGenImage('assets/images/faqs.png');

  /// File path: assets/images/fire.png
  AssetGenImage get fire => const AssetGenImage('assets/images/fire.png');

  /// File path: assets/images/golden-star.png
  AssetGenImage get goldenStar =>
      const AssetGenImage('assets/images/golden-star.png');

  /// File path: assets/images/help_icon.png
  AssetGenImage get helpIcon =>
      const AssetGenImage('assets/images/help_icon.png');

  /// File path: assets/images/padlock.png
  AssetGenImage get padlock => const AssetGenImage('assets/images/padlock.png');

  /// File path: assets/images/pending_icon.png
  AssetGenImage get pendingIcon =>
      const AssetGenImage('assets/images/pending_icon.png');

  /// File path: assets/images/playtime_icon.png
  AssetGenImage get playtimeIcon =>
      const AssetGenImage('assets/images/playtime_icon.png');

  /// File path: assets/images/playtime_tracking.png
  AssetGenImage get playtimeTracking =>
      const AssetGenImage('assets/images/playtime_tracking.png');

  /// File path: assets/images/privacy.png
  AssetGenImage get privacy => const AssetGenImage('assets/images/privacy.png');

  /// File path: assets/images/privacy_banner.png
  AssetGenImage get privacyBanner =>
      const AssetGenImage('assets/images/privacy_banner.png');

  /// File path: assets/images/sad_face.png
  AssetGenImage get sadFace =>
      const AssetGenImage('assets/images/sad_face.png');

  /// File path: assets/images/sample_proof.png
  AssetGenImage get sampleProof =>
      const AssetGenImage('assets/images/sample_proof.png');

  /// File path: assets/images/silver-star.png
  AssetGenImage get silverStar =>
      const AssetGenImage('assets/images/silver-star.png');

  /// File path: assets/images/singup_bg.png
  AssetGenImage get singupBg =>
      const AssetGenImage('assets/images/singup_bg.png');

  /// File path: assets/images/submit_complete.gif
  AssetGenImage get submitComplete =>
      const AssetGenImage('assets/images/submit_complete.gif');

  /// File path: assets/images/super-charge-can.png
  AssetGenImage get superChargeCan =>
      const AssetGenImage('assets/images/super-charge-can.png');

  /// File path: assets/images/terms.png
  AssetGenImage get terms => const AssetGenImage('assets/images/terms.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        chargeCan,
        clock,
        emptyIcon,
        faqs,
        fire,
        goldenStar,
        helpIcon,
        padlock,
        pendingIcon,
        playtimeIcon,
        playtimeTracking,
        privacy,
        privacyBanner,
        sadFace,
        sampleProof,
        silverStar,
        singupBg,
        submitComplete,
        superChargeCan,
        terms
      ];
}

class Assets {
  Assets._();

  static const String package = 'tyrads_sdk';

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'tyrads_sdk';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/tyrads_sdk/$_assetName';
}
