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
}