package com.tyrads.tyrads_sdk

import android.content.Context
import android.os.Build
import javax.microedition.khronos.egl.EGL10
import javax.microedition.khronos.opengles.GL10
import android.annotation.SuppressLint
import android.bluetooth.BluetoothAdapter
import com.google.android.gms.tasks.Tasks
import com.google.android.play.core.appset.AppSetClient
import com.google.android.play.core.appset.AppSetClientFactory
import java.util.concurrent.TimeoutException

/**
 * Extra Device Details Tracker for device capabilities
 * Detects: GPU, Bluetooth, Touch Support, Google AppSet ID
 *
 * Part of TS-1826: Device Details Tracking v4.0
 */
object ExtraDeviceDetails {
    private var context: Context? = null

    /**
     * Initialize context (call once from TyradsSdkPlugin)
     */
    fun initialize(ctx: Context) {
        context = ctx.applicationContext
    }

    /**
     * Detect GPU model
     * For Android 12+: Uses Build.SOC_MODEL
     * For older versions: Uses EGL10 OpenGL renderer info
     *
     * @return GPU model string (e.g., "Adreno 660")
     */
    fun getGpu(): String {
        return try {
            // Try Android 12+ method first
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val socModel = Build.SOC_MODEL
                if (socModel != null && socModel.isNotEmpty() && socModel != "unknown") {
                    return socModel
                }
            }

            // Fallback: Use EGL10 for GPU detection
            try {
                val egl10 = EGL10.getImplementation()
                val display = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY)
                if (display == EGL10.EGL_NO_DISPLAY) {
                    return "Unknown"
                }

                val glRenderer = egl10.eglQueryString(display, GL10.GL_RENDERER)
                glRenderer ?: "Unknown"
            } catch (e: Exception) {
                "Unknown"
            }
        } catch (e: Exception) {
            "Unknown"
        }
    }

    /**
     * Detect Bluetooth status
     * Checks if device has Bluetooth adapter and if it's available
     *
     * @return Bluetooth status (e.g., "SUPPORTED", "NOT_SUPPORTED")
     */
    @SuppressLint("MissingPermission")  // Permission checked at runtime by caller
    fun getBluetooth(): String {
        return try {
            val bluetoothAdapter = BluetoothAdapter.getDefaultAdapter()

            when {
                bluetoothAdapter == null -> "NOT_SUPPORTED"
                !bluetoothAdapter.isEnabled -> "DISABLED"
                else -> {
                    // Try to get device name if available
                    val deviceName = try {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                            // API 31+: Check BLUETOOTH_CONNECT permission
                            bluetoothAdapter.name ?: "SUPPORTED"
                        } else {
                            bluetoothAdapter.name ?: "SUPPORTED"
                        }
                    } catch (e: SecurityException) {
                        "SUPPORTED"
                    }
                    deviceName
                }
            }
        } catch (e: Exception) {
            "UNKNOWN"
        }
    }

    /**
     * Detect touch support level
     * Returns a 5-level hierarchy of touch capabilities
     *
     * Levels (from best to worst):
     * - MULTITOUCH_JAZZHAND: Advanced multitouch (API 20+)
     * - MULTITOUCH_DISTINCT: Standard multitouch
     * - MULTITOUCH: Basic multitouch
     * - SINGLE_TOUCH: Single touch only
     * - NOT_SUPPORTED: No touch support
     *
     * @return Touch support level
     */
    fun getTouchSupport(): String {
        return try {
            val pkgManager = context?.packageManager ?: return "UNKNOWN"

            // Check for advanced features first
            val hasJazzHand = pkgManager.hasSystemFeature("android.hardware.touchscreen.multitouch.jazzhand")
            if (hasJazzHand) {
                return "MULTITOUCH_JAZZHAND"
            }

            val hasMultitouchDistinct = pkgManager.hasSystemFeature("android.hardware.touchscreen.multitouch.distinct")
            if (hasMultitouchDistinct) {
                return "MULTITOUCH_DISTINCT"
            }

            val hasMultitouch = pkgManager.hasSystemFeature("android.hardware.touchscreen.multitouch")
            if (hasMultitouch) {
                return "MULTITOUCH"
            }

            val hasTouch = pkgManager.hasSystemFeature("android.hardware.touchscreen")
            if (hasTouch) {
                return "SINGLE_TOUCH"
            }

            "NOT_SUPPORTED"
        } catch (e: Exception) {
            "UNKNOWN"
        }
    }

    /**
     * Get Google AppSet ID (device identifier)
     * Blocking call - should be called on background thread
     *
     * @return AppSet ID string
     */
    fun getGoogleAppSetId(): String {
        return try {
            val ctx = context ?: return "Unknown"

            try {
                val appSetClient: AppSetClient = AppSetClientFactory.create(ctx)
                val appSetIdTask = appSetClient.appSetIdInfo

                // Blocking call with timeout
                val appSetIdInfo = Tasks.await(appSetIdTask, 3, java.util.concurrent.TimeUnit.SECONDS)
                appSetIdInfo.id
            } catch (e: TimeoutException) {
                "Unknown"
            } catch (e: Exception) {
                "Unknown"
            }
        } catch (e: Exception) {
            "Unknown"
        }
    }

    /**
     * Get all device details as a map
     * @return Map with all device capability information
     */
    @Suppress("UNUSED")  // Debugging/monitoring utility
    fun getAllDeviceDetails(): Map<String, String> {
        return mapOf(
            "gpu" to getGpu(),
            "bluetooth" to getBluetooth(),
            "touch_support" to getTouchSupport(),
            "googleAppSetID" to getGoogleAppSetId()
        )
    }
}