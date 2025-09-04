package com.tyrads.tyrads_sdk

import android.content.Context  
import android.net.ConnectivityManager
import android.net.NetworkInfo
import android.telephony.TelephonyManager


fun getNetworkType(context: Context): String {
    val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    val activeNetwork = connectivityManager.activeNetworkInfo

    return when {
        activeNetwork?.type == ConnectivityManager.TYPE_WIFI -> "WiFi"
        activeNetwork?.type == ConnectivityManager.TYPE_MOBILE -> when (activeNetwork.subtype) {
            TelephonyManager.NETWORK_TYPE_LTE -> "Mobile - 4G LTE"
            TelephonyManager.NETWORK_TYPE_NR -> "Mobile - 5G"
            TelephonyManager.NETWORK_TYPE_HSPAP, TelephonyManager.NETWORK_TYPE_EDGE -> "Mobile - 3G/2G"
            else -> "Mobile Data"
        }
        activeNetwork?.type == ConnectivityManager.TYPE_ETHERNET -> "Ethernet"
        else -> "Unknown or No Connection"
    }
}
