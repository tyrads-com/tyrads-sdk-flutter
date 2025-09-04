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

  // Screen Metrics
  final String screenDensity;
  final String screenWidth;
  final String screenHeight;

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
  });

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
    );
  }
}
