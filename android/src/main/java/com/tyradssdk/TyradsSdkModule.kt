package com.tyradssdk

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.bridge.Promise
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import com.google.gson.Gson
import android.util.Log
import com.tyrads.sdk.Tyrads

class TyradsSdkModule(reactContext: ReactApplicationContext) :
  ReactContextBaseJavaModule(reactContext) {

  override fun getName(): String {
    return NAME
  }

    @ReactMethod
    fun init(apiKey: String, apiSecret: String, promise: Promise) {
        try {
            Tyrads.getInstance().init(this.reactApplicationContext, apiKey, apiSecret)
            promise.resolve(null)
        } catch (e: Exception) {
            promise.reject("INIT_ERROR", e.message)
        }
    }

    @ReactMethod
    fun loginUser(userId: String, promise: Promise) {
      Tyrads.getInstance().tyradScope.launch {
            try {
                val apiHeaders = Tyrads.getInstance().loginUser(userId)
                Log.i("bmd", "apiHeaders: $apiHeaders")
                if (apiHeaders != null) {
                    val jsonString = Gson().toJson(apiHeaders)
                    promise.resolve(jsonString)
                } else {
                    promise.resolve(null)
                }
            } catch (e: Exception) {
                promise.reject("LOGIN_ERROR", e.message)
            }
        }
    }
    @ReactMethod
    fun showOffers(route: String? = null, campaignID: Int? = null) {
        Tyrads.getInstance().showOffers(route = route, campaignID = campaignID)
    }

  companion object {
    const val NAME = "TyradsSdk"
  }
}
