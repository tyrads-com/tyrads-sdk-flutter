package com.tyrads.tyrads_sdk.push_notifications

import android.Manifest
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import androidx.annotation.Keep
import androidx.core.content.ContextCompat
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
// import com.tyrads.tyrads_sdk.Tyrads
import com.tyrads.tyrads_sdk.push_notifications.activity.NotificationPermissionActivity
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import androidx.core.content.edit

@Keep
class FCMService : FirebaseMessagingService() {

    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    override fun onCreate() {
        super.onCreate()
        FCMNotifications.getInstance().initialize(this)
    }


    companion object {
        private const val TAG = "TyradsFCMService"

        suspend fun initialize(context: Context): String? {
            return try {
                com.google.firebase.FirebaseApp.initializeApp(
                    context,
                    com.google.firebase.FirebaseOptions.Builder()
                        .setApiKey(FirebaseConfig.API_KEY_ANDROID)
                        .setApplicationId(FirebaseConfig.APP_ID_ANDROID)
                        .setProjectId(FirebaseConfig.PROJECT_ID)
                        .setGcmSenderId(FirebaseConfig.MESSAGING_SENDER_ID)
                        .setStorageBucket(FirebaseConfig.STORAGE_BUCKET).build()
                )
                FCMNotifications.getInstance().initialize(context)
                requestNotificationPermissionIfNeeded(context)
                val token = fetchTokenWithRetry()
                Log.d(TAG, "FCM token retrieved: $token")
                token
            } catch (e: IllegalStateException) {
                Log.d(TAG, "Firebase already initialized")
                fetchTokenWithRetry()
            } catch (e: Exception) {
                Log.e(TAG, "Failed to initialize FCM: ${e.message}", e)
                null
            }
        }

        private const val MAX_TOKEN_RETRIES = 3
        private const val RETRY_DELAY_MS = 1_000L

        private suspend fun fetchTokenWithRetry(): String? {
            repeat(MAX_TOKEN_RETRIES) { attempt ->
                try {
                    val token = FirebaseMessaging.getInstance().token.await()
                    if (!token.isNullOrEmpty()) {
                        Log.d(TAG, "FCM token fetched on attempt ${attempt + 1}: $token")
                        return token
                    }
                    Log.w(TAG, "FCM token was empty on attempt ${attempt + 1}, retrying...")
                } catch (e: Exception) {
                    Log.w(TAG, "FCM token fetch failed on attempt ${attempt + 1}: ${e.message}")
                }
                val backoffDelay = RETRY_DELAY_MS * (1 shl attempt)
                Log.d(TAG, "Waiting ${backoffDelay}ms before next retry...")
                delay(backoffDelay)
            }
            Log.e(TAG, "FCM token could not be retrieved after $MAX_TOKEN_RETRIES attempts")
            return null
        }

        private fun requestNotificationPermissionIfNeeded(context: Context) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                val hasPermission = ContextCompat.checkSelfPermission(
                    context, Manifest.permission.POST_NOTIFICATIONS
                ) == PackageManager.PERMISSION_GRANTED

                if (!hasPermission) {
                    Log.d(TAG, "POST_NOTIFICATIONS permission not granted, requesting...")
                    try {
                        val intent = Intent(context, NotificationPermissionActivity::class.java)
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        context.startActivity(intent)
                    } catch (e: Exception) {
                        Log.e(TAG, "Failed to request notification permission: ${e.message}", e)
                    }
                } else {
                    Log.d(TAG, "POST_NOTIFICATIONS permission already granted")
                }
            }
        }

        private fun saveToken(token: String) {
            try {
                // val tyrads = Tyrads.getInstance() // Missing Tyrads class
                // tyrads.preferences.edit {
                //     putString("fcm_token", token)
                // }
                Log.d(TAG, "FCM token saved: $token")
            } catch (e: UninitializedPropertyAccessException) {
                Log.w(TAG, "Tyrads not initialized yet, FCM token will be saved later")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to save FCM token: ${e.message}")
            }
        }
    }

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        saveToken(token)
    }

    override fun onMessageReceived(message: RemoteMessage) {
        super.onMessageReceived(message)
        Log.d(TAG, "Message received from: ${message.from}")
        FCMNotifications.getInstance().handleNotificationEvent("onReceive", message.data)
        serviceScope.launch {
            handleMessage(message)
        }
    }

    private suspend fun handleMessage(message: RemoteMessage) {
        try {
            message.notification?.let { notification ->
                val title = notification.title ?: "TyrAds Notification"
                val body = notification.body ?: ""
                val imageUrl = notification.imageUrl?.toString()

                FCMNotifications.getInstance().showNotification(
                    context = applicationContext,
                    title = title,
                    body = body,
                    imageUrl = imageUrl,
                    payload = message.data
                )
            }

            if (message.data.isNotEmpty()) {
                handleMessageData(message.data)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error handling message: ${e.message}", e)
        }
    }

    private fun handleMessageData(data: Map<String, String>) {

    }

    override fun onDeletedMessages() {
        super.onDeletedMessages()
    }

    override fun onMessageSent(messageId: String) {
        super.onMessageSent(messageId)
    }

    override fun onSendError(messageId: String, exception: Exception) {
        super.onSendError(messageId, exception)
    }
}