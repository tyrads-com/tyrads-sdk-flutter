package com.tyrads.tyrads_sdk

import java.util.concurrent.atomic.AtomicInteger

/**
 * Global Clipboard Event Tracker for tracking device clipboard access events
 * Uses AtomicInteger for thread-safe operations across app lifecycle
 * 
 * Part of TS-1826: Device Details Tracking v4.0
 */
object ClipboardTracker {
    // Clipboard Events Counter
    private val clipboardEventCount = AtomicInteger(0)

    // Clipboard Score (0-100)
    private val clipboardScore = AtomicInteger(0)

    /**
     * Increment clipboard event count
     * @return current count after increment
     */
    fun incrementClipboardEvent(): Int {
        return clipboardEventCount.incrementAndGet()
    }

    /**
     * Get clipboard event count
     * @return current count
     */
    fun getClipboardEventCount(): Int {
        return clipboardEventCount.get()
    }

    /**
     * Calculate and set clipboard score based on events
     * Score calculation: (eventCount / maxEvents) * 100
     * Where maxEvents = 500 (configurable threshold)
     * 
     * Score ranges:
     * 0-20: Minimal clipboard access
     * 20-40: Low clipboard access
     * 40-60: Medium clipboard access
     * 60-80: High clipboard access
     * 80-100: Very high clipboard access
     * 
     * @param maxEvents Maximum events threshold (default: 500)
     * @return clipboard score (0-100)
     */
    fun calculateClipboardScore(maxEvents: Int = 500): Int {
        val eventCount = clipboardEventCount.get()
        val score = ((eventCount.toDouble() / maxEvents.toDouble()) * 100).toInt()
        val cappedScore = if (score > 100) 100 else score
        clipboardScore.set(cappedScore)
        return cappedScore
    }

    /**
     * Get current clipboard score
     * @return clipboard score (0-100)
     */
    fun getClipboardScore(): Int {
        return clipboardScore.get()
    }

    /**
     * Set clipboard score directly
     * @param score value to set (should be 0-100)
     */
    fun setClipboardScore(score: Int) {
        val validScore = when {
            score < 0 -> 0
            score > 100 -> 100
            else -> score
        }
        clipboardScore.set(validScore)
    }

    /**
     * Reset clipboard counters
     * Used for testing and debugging
     */
    @Suppress("UNUSED")  // Testing & debugging utility
    fun resetClipboardCounters() {
        clipboardEventCount.set(0)
        clipboardScore.set(0)
    }

    /**
     * Get all clipboard metrics as a map
     * @return Map with clipboard_num_events and clipboard_score
     */
    @Suppress("UNUSED")  // Debugging/monitoring utility
    fun getAllClipboardMetrics(): Map<String, Int> {
        return mapOf(
            "clipboard_num_events" to getClipboardEventCount(),
            "clipboard_score" to getClipboardScore()
        )
    }
}
