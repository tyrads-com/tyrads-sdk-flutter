package com.tyrads.tyrads_sdk

import android.os.SystemClock
import java.util.Date

fun getDeviceMetrics(): Map<String, String> {
    val uptimeMillis = SystemClock.uptimeMillis()
    val bootTime = Date(System.currentTimeMillis() - uptimeMillis)
    return mapOf(
        "device_uptime_hours" to (uptimeMillis / (1000 * 60 * 60)).toString(),
        "device_boot_time" to bootTime.toString()
    )
}
