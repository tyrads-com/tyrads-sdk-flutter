package com.tyrads.tyrads_sdk

import android.content.Context.TELEPHONY_SERVICE
import android.os.Build
import android.telephony.TelephonyManager
import io.flutter.embedding.android.FlutterActivity
import android.util.Log
import android.content.Context
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.io.File
import java.io.BufferedReader
import java.io.FileReader
/** TyradsSdkPlugin */
class TyradsSdkPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var context: Context


  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "tyrads_sdk")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getTrackingInfo") {
      result.success(getTrackingInfo())
    } else {
      result.notImplemented()
    }
  }


private fun getTrackingInfo(): Map<String, String> {
        val telephonyManager = context.getSystemService(TELEPHONY_SERVICE) as TelephonyManager

        val carrierName = telephonyManager.networkOperatorName ?: "Unknown"
        val mccMnc = telephonyManager.networkOperator ?: "Unknown"
        val mcc = if (mccMnc.length >= 3) mccMnc.substring(0, 3) else "Unknown"
        val mnc = if (mccMnc.length > 3) mccMnc.substring(3) else "Unknown"
        val countryIso = telephonyManager.networkCountryIso ?: "Unknown"
        val isRoaming = telephonyManager.isNetworkRoaming.toString()
        val simOperatorName = telephonyManager.simOperatorName ?: "Unknown"
        val simOperator = telephonyManager.simOperator ?: "Unknown"
        val simCountryIso = telephonyManager.simCountryIso ?: "Unknown"
        val supportedAbis = Build.SUPPORTED_ABIS.joinToString(",")

        val phoneType = when (telephonyManager.phoneType) {
            TelephonyManager.PHONE_TYPE_GSM -> "GSM"
            TelephonyManager.PHONE_TYPE_CDMA -> "CDMA"
            TelephonyManager.PHONE_TYPE_SIP -> "SIP"
            TelephonyManager.PHONE_TYPE_NONE -> "None"
            else -> "Unknown"
        }

        var telephonyInfo = mapOf(
            "carrier_name" to carrierName,
            "mcc_mnc" to mccMnc,
            "mcc" to mcc,
            "mnc" to mnc,
            "country_iso" to countryIso,
            "is_roaming" to isRoaming,
            "sim_operator_name" to simOperatorName,
            "sim_operator" to simOperator,
            "sim_country_iso" to simCountryIso,
            "phone_type" to phoneType,
            "supported_abis" to supportedAbis
        )

    // CPU Information
    val cpuInfo = mapOf(
        "cpu_cores" to Runtime.getRuntime().availableProcessors().toString(),
        "supported_abis" to Build.SUPPORTED_ABIS.joinToString(","),
        "supported_32_bit_abis" to Build.SUPPORTED_32_BIT_ABIS.joinToString(","),
        "supported_64_bit_abis" to Build.SUPPORTED_64_BIT_ABIS.joinToString(","),
        "cpu_hardware" to Build.HARDWARE,
        "cpu_model" to if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) Build.SOC_MODEL else "Unknown",
        "max_memory" to (Runtime.getRuntime().maxMemory() / 1024 / 1024).toString(),
        "total_memory" to (Runtime.getRuntime().totalMemory() / 1024 / 1024).toString(),
        "free_memory" to (Runtime.getRuntime().freeMemory() / 1024 / 1024).toString(),
        "os_arch" to System.getProperty("os.arch"),
    )
    // Device Information
    val deviceInfo = mapOf(
        "device_manufacturer" to Build.MANUFACTURER,
        "device_model" to Build.MODEL,
        "device_brand" to Build.BRAND,
        "device_board" to Build.BOARD,
        "device_hardware" to Build.HARDWARE,
        "device_fingerprint" to Build.FINGERPRINT,
        "android_version" to Build.VERSION.RELEASE,
        "android_sdk_int" to Build.VERSION.SDK_INT.toString(),
        "build_type" to Build.TYPE,
        "build_tags" to (Build.TAGS ?: "Unknown")
    )

    // Screen Metrics
    val screenInfo = mapOf(
        "screen_density" to context.resources.displayMetrics.density.toString(),
        "screen_width" to context.resources.displayMetrics.widthPixels.toString(),
        "screen_height" to context.resources.displayMetrics.heightPixels.toString()
    )
    return buildMap {
        putAll(telephonyInfo)
        putAll(cpuInfo) 
        putAll(deviceInfo)
        putAll(screenInfo)
    }

  } 
  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

}
