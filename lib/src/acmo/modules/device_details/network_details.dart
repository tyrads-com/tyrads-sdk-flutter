import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import 'dart:io';

import 'package:tyrads_sdk/src/plugin/tyrads_sdk_platform_interface.dart';

class AcmoNetworkDetailsController {
  final Connectivity _connectivity = Connectivity();

  Future<Map<String, dynamic>> getNetworkDetails() async {
    var networkDetails = <String, dynamic>{};
    
    try {
      final connectivityResults = await _connectivity.checkConnectivity();
      networkDetails['connectionType'] = _getConnectionType(connectivityResults.first);
      
      final speedResult = await _measureNetworkSpeed();
      networkDetails['networkSpeed'] = speedResult;
      final vpnResult = await _isVpnActive();
      networkDetails['isVpnActive'] = vpnResult;
      
    } catch (e) {
      networkDetails['connectionType'] = 'Unknown';
      networkDetails['networkSpeed'] = '0.00 KB/s';
      networkDetails['isVpnActive'] = 'Unknown';
    }

    return networkDetails;
  }

  String _getConnectionType(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        return 'WiFi';
      case ConnectivityResult.mobile:
        return 'Mobile Data';
      case ConnectivityResult.ethernet:
        return 'Ethernet';
      case ConnectivityResult.none:
        return 'No Connection';
      default:
        return 'Unknown';
    }
  }

  Future<bool> _isVpnActive()async{
    final bool isVpnActive = await TyradsSdkPlatform.instance.isVpnActive();
    return isVpnActive;
  }

  Future<String> _measureNetworkSpeed() async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await HttpClient().getUrl(Uri.parse('https://www.google.com'));
      final httpResponse = await response.close();
      final bytes = await httpResponse.toList();
      stopwatch.stop();

      final durationInSeconds = stopwatch.elapsedMilliseconds / 1000;
      final totalBytes = bytes.fold<int>(0, (sum, list) => sum + list.length);
      final speedInBytesPerSec = totalBytes / durationInSeconds;

      // Convert to appropriate unit
      if (speedInBytesPerSec >= 1073741824) { // 1 GB/s = 1024^3 bytes/s
        return '${(speedInBytesPerSec / 1073741824).toStringAsFixed(2)} GB/s';
      } else if (speedInBytesPerSec >= 1048576) { // 1 MB/s = 1024^2 bytes/s
        return '${(speedInBytesPerSec / 1048576).toStringAsFixed(2)} MB/s';
      } else {
        return '${(speedInBytesPerSec / 1024).toStringAsFixed(2)} KB/s';
      }
    } catch (e) {
      return '0.00 KB/s';
    }
  }
}
