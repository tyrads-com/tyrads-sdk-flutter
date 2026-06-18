part of '../../../../tyrads_sdk.dart';

/// Represents information about the media source for user acquisition.
class TyradsMediaSourceInfo {
  /// The name of the source where the user was acquired.
  final String? mediaSourceName;

  /// The name of the campaign used to acquire the user.
  final String? mediaCampaignName;

  /// The ID of the source where the user was acquired.
  final String? mediaSourceId;

  /// The sub-source ID of where the user was acquired.
  final String? mediaSubSourceId;

  /// Indicates if the user acquisition was done via incentivized channels.
  final bool? incentivized;

  /// The name of the ad set used to acquire the user.
  final String? mediaAdsetName;

  /// The ID of the ad set used to acquire the user.
  final String? mediaAdsetId;

  /// The name of the creative used to acquire the user.
  final String? mediaCreativeName;

  /// The ID of the creative used to acquire the user.
  final String? mediaCreativeId;

  /// Custom field for storing additional data. Not received on postback.
  final String? sub1;

  /// Custom field for storing additional data. Not received on postback.
  final String? sub2;

  /// Custom field for storing additional data. Can be sent back on postback.
  final String? sub3;

  /// Custom field for storing additional data. Can be sent back on postback.
  final String? sub4;

  /// Custom field for storing additional data. Not received on postback.
  final String? sub5;

  TyradsMediaSourceInfo({
    this.mediaSourceName,
    this.mediaCampaignName,
    this.mediaSourceId,
    this.mediaSubSourceId,
    this.incentivized,
    this.mediaAdsetName,
    this.mediaAdsetId,
    this.mediaCreativeName,
    this.mediaCreativeId,
    this.sub1,
    this.sub2,
    this.sub3,
    this.sub4,
    this.sub5,
  });

  Map<String, dynamic> toJson() {
    return {
      'mediaSourceName': mediaSourceName,
      'mediaCampaignName': mediaCampaignName,
      'mediaSourceId': mediaSourceId,
      'mediaSubSourceId': mediaSubSourceId,
      'incentivized': incentivized,
      'mediaAdsetName': mediaAdsetName,
      'mediaAdsetId': mediaAdsetId,
      'mediaCreativeName': mediaCreativeName,
      'mediaCreativeId': mediaCreativeId,
      'sub1': sub1,
      'sub2': sub2,
      'sub3': sub3,
      'sub4': sub4,
      'sub5': sub5,
    };
  }

  factory TyradsMediaSourceInfo.fromJson(Map<String, dynamic> json) {
    return TyradsMediaSourceInfo(
      mediaSourceName: json['mediaSourceName'] as String?,
      mediaCampaignName: json['mediaCampaignName'] as String?,
      mediaSourceId: json['mediaSourceId'] as String?,
      mediaSubSourceId: json['mediaSubSourceId'] as String?,
      incentivized: json['incentivized'] as bool?,
      mediaAdsetName: json['mediaAdsetName'] as String?,
      mediaAdsetId: json['mediaAdsetId'] as String?,
      mediaCreativeName: json['mediaCreativeName'] as String?,
      mediaCreativeId: json['mediaCreativeId'] as String?,
      sub1: json['sub1'] as String?,
      sub2: json['sub2'] as String?,
      sub3: json['sub3'] as String?,
      sub4: json['sub4'] as String?,
      sub5: json['sub5'] as String?,
    );
  }
}