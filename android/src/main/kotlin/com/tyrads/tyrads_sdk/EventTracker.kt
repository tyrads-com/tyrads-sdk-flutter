package com.tyrads.tyrads_sdk

import java.util.concurrent.atomic.AtomicInteger

/**
 * Global Event Tracker for tracking user interaction events
 * Tracks: Click, Mouse, and Touch events
 * Uses AtomicInteger for thread-safe operations across app lifecycle
 * 
 * Part of TS-1826: Device Details Tracking v4.0
 */
object EventTracker {
    // Click Events Counter
    private val clickEventCount = AtomicInteger(0)

    // Mouse Events Counter
    private val mouseEventCount = AtomicInteger(0)

    // Touch Events Counter
    private val touchEventCount = AtomicInteger(0)

    /**
     * Increment click event count
     * @return current count after increment
     */
    fun incrementClickEvent(): Int {
        return clickEventCount.incrementAndGet()
    }

    /**
     * Get click event count
     * @return current count
     */
    fun getClickEventCount(): Int {
        return clickEventCount.get()
    }

    /**
     * Increment mouse event count
     * @return current count after increment
     */
    fun incrementMouseEvent(): Int {
        return mouseEventCount.incrementAndGet()
    }

    /**
     * Get mouse event count
     * @return current count
     */
    fun getMouseEventCount(): Int {
        return mouseEventCount.get()
    }

    /**
     * Increment touch event count
     * @return current count after increment
     */
    fun incrementTouchEvent(): Int {
        return touchEventCount.incrementAndGet()
    }

    /**
     * Get touch event count
     * @return current count
     */
    fun getTouchEventCount(): Int {
        return touchEventCount.get()
    }

    /**
     * Reset all event counters
     * Used for testing and debugging
     */
    @Suppress("UNUSED")  // Testing & debugging utility
    fun resetAllEventCounters() {
        clickEventCount.set(0)
        mouseEventCount.set(0)
        touchEventCount.set(0)
    }

    /**
     * Get all event metrics as a map
     * @return Map with all event counts
     */
    @Suppress("UNUSED")  // Debugging/monitoring utility
    fun getAllEventMetrics(): Map<String, Int> {
        return mapOf(
            "click_num_events" to getClickEventCount(),
            "mouse_num_events" to getMouseEventCount(),
            "touch_num_events" to getTouchEventCount()
        )
    }
}
