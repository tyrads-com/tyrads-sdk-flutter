class TrackingInfo {
  // Telephony Information
  final String carrierName;
  final String mccMnc;
  final String mcc;
  final String mnc;
  final String countryIso;
  final String isRoaming;
  final String simOperatorName;
  final String simOperator;
  final String simCountryIso;
  final String phoneType;
  final String supportedAbis;

  // CPU Information
  final String cpuCores;
  final String supported32BitAbis;
  final String supported64BitAbis;
  final String cpuHardware;
  final String cpuModel;
  final String maxMemory;
  final String totalMemory;
  final String freeMemory;
  final String osArch;
  final String ramSize;

  // Device Information
  final String deviceManufacturer;
  final String deviceModel;
  final String deviceBrand;
  final String deviceBoard;
  final String deviceHardware;
  final String deviceFingerprint;
  final String androidVersion;
  final String androidSdkInt;
  final String buildType;
  final String buildTags;

  // Screen metrics
  final String screenDensity;
  final String screenWidth;
  final String screenHeight;
  final String screenScale;

  final String batteryLevel;
  final String totalDiskSpace;
  final String freeDiskSpace;

  // NEW 11 FIELDS - TS-1826 Device Details v4.0
  final int keyboardNumEvents;
  final int keyboardScore;
  final int clipboardNumEvents;
  final int clipboardScore;
  final int clickNumEvents;
  final int mouseNumEvents;
  final int touchNumEvents;
  final String? gpu;
  final String? bluetooth;
  final String? touchSupport;
  final String? googleAppSetID;

  TrackingInfo({
    // Telephony Information
    required this.carrierName,
    required this.mccMnc,
    required this.mcc,
    required this.mnc,
    required this.countryIso,
    required this.isRoaming,
    required this.simOperatorName,
    required this.simOperator,
    required this.simCountryIso,
    required this.phoneType,
    required this.supportedAbis,

    // CPU Information
    required this.cpuCores,
    required this.supported32BitAbis,
    required this.supported64BitAbis,
    required this.cpuHardware,
    required this.cpuModel,
    required this.maxMemory,
    required this.totalMemory,
    required this.freeMemory,
    required this.osArch,
    required this.ramSize,

    // Device Information
    required this.deviceManufacturer,
    required this.deviceModel,
    required this.deviceBrand,
    required this.deviceBoard,
    required this.deviceHardware,
    required this.deviceFingerprint,
    required this.androidVersion,
    required this.androidSdkInt,
    required this.buildType,
    required this.buildTags,

    // Screen Metrics
    required this.screenDensity,
    required this.screenWidth,
    required this.screenHeight,
    required this.screenScale,
    required this.batteryLevel,
    required this.totalDiskSpace,
    required this.freeDiskSpace,

    // NEW 11 FIELDS
    this.keyboardNumEvents = 0,
    this.keyboardScore = 0,
    this.clipboardNumEvents = 0,
    this.clipboardScore = 0,
    this.clickNumEvents = 0,
    this.mouseNumEvents = 0,
    this.touchNumEvents = 0,
    this.gpu,
    this.bluetooth,
    this.touchSupport,
    this.googleAppSetID,
  });

  // Helper method to parse dynamic values to int
  static int _parseToInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  // Helper method to parse dynamic values to String
  static String? _parseToString(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    return value.toString();
  }

  factory TrackingInfo.fromMap(Map<String, dynamic> map) {
    return TrackingInfo(
      // Telephony Information
      carrierName: map['carrier_name'] ?? '',
      mccMnc: map['mcc_mnc'] ?? '',
      mcc: map['mcc'] ?? '',
      mnc: map['mnc'] ?? '',
      countryIso: map['country_iso'] ?? '',
      isRoaming: map['is_roaming'] ?? '',
      simOperatorName: map['sim_operator_name'] ?? '',
      simOperator: map['sim_operator'] ?? '',
      simCountryIso: map['sim_country_iso'] ?? '',
      phoneType: map['phone_type'] ?? '',
      supportedAbis: map['supported_abis'] ?? '',

      // CPU Information
      cpuCores: map['cpu_cores'] ?? '',
      supported32BitAbis: map['supported_32_bit_abis'] ?? '',
      supported64BitAbis: map['supported_64_bit_abis'] ?? '',
      cpuHardware: map['cpu_hardware'] ?? '',
      cpuModel: map['cpu_model'] ?? '',
      maxMemory: map['max_memory'] ?? '',
      totalMemory: map['total_memory'] ?? '',
      freeMemory: map['free_memory'] ?? '',
      osArch: map['os_arch'] ?? '',
      ramSize: map['ram_size'] ?? '',

      // Device Information
      deviceManufacturer: map['device_manufacturer'] ?? '',
      deviceModel: map['device_model'] ?? '',
      deviceBrand: map['device_brand'] ?? '',
      deviceBoard: map['device_board'] ?? '',
      deviceHardware: map['device_hardware'] ?? '',
      deviceFingerprint: map['device_fingerprint'] ?? '',
      androidVersion: map['android_version'] ?? '',
      androidSdkInt: map['android_sdk_int'] ?? '',
      buildType: map['build_type'] ?? '',
      buildTags: map['build_tags'] ?? '',

      // Screen Metrics
      screenDensity: map['screen_density'] ?? '',
      screenWidth: map['screen_width'] ?? '',
      screenHeight: map['screen_height'] ?? '',
      screenScale: map['screen_scale'] ?? '',
      batteryLevel: map['batteryLevel']?.toString() ?? '',
      totalDiskSpace: map['totalDiskSpace']?.toString() ?? '',
      freeDiskSpace: map['freeDiskSpace']?.toString() ?? '',

      // NEW 11 FIELDS - TS-1826 WITH PROPER TYPE PARSING
      keyboardNumEvents: _parseToInt(map['keyboard_num_events'] ?? map['keyboardNumEvents']),
      keyboardScore: _parseToInt(map['keyboard_score'] ?? map['keyboardScore']),
      clipboardNumEvents: _parseToInt(map['clipboard_num_events'] ?? map['clipboardNumEvents']),
      clipboardScore: _parseToInt(map['clipboard_score'] ?? map['clipboardScore']),
      clickNumEvents: _parseToInt(map['click_num_events'] ?? map['clickNumEvents']),
      mouseNumEvents: _parseToInt(map['mouse_num_events'] ?? map['mouseNumEvents']),
      touchNumEvents: _parseToInt(map['touch_num_events'] ?? map['touchNumEvents']),
      gpu: _parseToString(map['gpu']),
      bluetooth: _parseToString(map['bluetooth']),
      touchSupport: _parseToString(map['touch_support'] ?? map['touchSupport']),
      googleAppSetID: _parseToString(map['googleAppSetID'] ?? map['google_app_set_id']),
    );
  }
}