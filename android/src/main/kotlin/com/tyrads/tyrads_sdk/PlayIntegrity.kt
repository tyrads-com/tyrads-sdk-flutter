package com.tyrads.tyrads_sdk

import android.content.Context
import com.google.android.play.core.integrity.IntegrityManagerFactory
import com.google.android.play.core.integrity.IntegrityTokenRequest
import java.util.UUID
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException
import android.util.Log

suspend fun getPlayIntegrityToken(context: Context): String = suspendCancellableCoroutine { continuation ->
    val integrityManager = IntegrityManagerFactory.create(context)
    val nonce = UUID.randomUUID().toString()
    val request = IntegrityTokenRequest.builder()
        .setNonce(nonce)
        .setCloudProjectNumber(BuildConfig.CLOUD_PROJECT_NUMBER.toLong())
        .build()

    integrityManager.requestIntegrityToken(request)
        .addOnSuccessListener { response ->
            continuation.resume(response.token())
        }
        .addOnFailureListener { exception ->
            continuation.resumeWithException(exception)
        }
}

