part of '../../../../tyrads_sdk.dart';

class TyradsUserInfo {
  /// Can be used to identify the user to prevent fraud.
  /// Format: email address
  final String? email;

  /// Can be used to identify the user to prevent fraud.
  /// Format: + should be replaced with 00, example: 0015555551234 for a US number
  final String? phoneNumber;

  /// Can be used to segment the user base in different groups
  /// allowing you to reward them a higher or lower % based on this group.
  /// Example: "High purchasing user"
  final String? userGroup;

  TyradsUserInfo({
    this.email,
    this.phoneNumber,
    this.userGroup,
  });

}
