package com.tyrads.tyrads_sdk

import java.util.concurrent.atomic.AtomicInteger

/**
 * Global Keyboard Event Tracker for tracking device keyboard interaction events
 * Uses AtomicInteger for thread-safe operations across app lifecycle
 * 
 * Part of TS-1826: Device Details Tracking v4.0
 */
object KeyboardTracker {
    // Keyboard Events Counter
    private val keyboardEventCount = AtomicInteger(0)

    // Keyboard Score (0-100)
    private val keyboardScore = AtomicInteger(0)

    /**
     * Increment keyboard event count
     * @return current count after increment
     */
    fun incrementKeyboardEvent(): Int {
        return keyboardEventCount.incrementAndGet()
    }

    /**
     * Get keyboard event count
     * @return current count
     */
    fun getKeyboardEventCount(): Int {
        return keyboardEventCount.get()
    }

    /**
     * Calculate and set keyboard score based on events
     * Score calculation: (eventCount / maxEvents) * 100
     * Where maxEvents = 1000 (configurable threshold)
     * 
     * Score ranges:
     * 0-20: Minimal keyboard usage
     * 20-40: Low keyboard usage
     * 40-60: Medium keyboard usage
     * 60-80: High keyboard usage
     * 80-100: Very high keyboard usage
     * 
     * @param maxEvents Maximum events threshold (default: 1000)
     * @return keyboard score (0-100)
     */
    fun calculateKeyboardScore(maxEvents: Int = 1000): Int {
        val eventCount = keyboardEventCount.get()
        val score = ((eventCount.toDouble() / maxEvents.toDouble()) * 100).toInt()
        val cappedScore = if (score > 100) 100 else score
        keyboardScore.set(cappedScore)
        return cappedScore
    }

    /**
     * Get current keyboard score
     * @return keyboard score (0-100)
     */
    fun getKeyboardScore(): Int {
        return keyboardScore.get()
    }

    /**
     * Set keyboard score directly
     * @param score value to set (should be 0-100)
     */
    fun setKeyboardScore(score: Int) {
        val validScore = when {
            score < 0 -> 0
            score > 100 -> 100
            else -> score
        }
        keyboardScore.set(validScore)
    }

    /**
     * Reset keyboard counters
     * Used for testing and debugging
     */
    @Suppress("UNUSED")  // Testing & debugging utility
    fun resetKeyboardCounters() {
        keyboardEventCount.set(0)
        keyboardScore.set(0)
    }

    /**
     * Get all keyboard metrics as a map
     * @return Map with keyboard_num_events and keyboard_score
     */
    @Suppress("UNUSED")  // Debugging/monitoring utility
    fun getAllKeyboardMetrics(): Map<String, Int> {
        return mapOf(
            "keyboard_num_events" to getKeyboardEventCount(),
            "keyboard_score" to getKeyboardScore()
        )
    }
}
