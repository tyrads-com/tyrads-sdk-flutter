part of '../../../../tyrads_sdk.dart';
enum TyradsCallbackType {
  campaignDetail,
  campaignActivated,
  campaignInstalled,
}

typedef TyradsCallback = Function(Map<String, dynamic>);