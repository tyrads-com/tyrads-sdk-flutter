class DeviceMetrics {
  final String uptime;
  final String bootTime;

  DeviceMetrics({
    required this.uptime,
    required this.bootTime,
  });

  static DeviceMetrics fromMap(Map<String, dynamic> data) {
    return DeviceMetrics(
      uptime: data['device_uptime_hours'],
      bootTime: data['device_boot_time'],
    );
  }
}
