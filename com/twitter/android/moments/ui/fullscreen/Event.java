package com.twitter.android.moments.ui.fullscreen;

/* compiled from: Twttr */
public class Event {
    private final EventType a;
    private float b;

    /* compiled from: Twttr */
    public enum EventType {
        ZOOM,
        TAP,
        DOUBLE_TAP,
        TOUCH_DOWN,
        SCALE_MODE_FIT_NO_ANIM,
        SCALE_MODE_FIT,
        SCALE_MODE_FILL,
        CHROME_MODE_LOCAL_NO_ANIM,
        CHROME_MODE_GLOBAL,
        CHROME_MODE_LOCAL,
        PREVIOUS_PAGE,
        ROTATE_LANDSCAPE,
        ROTATE_PORTRAIT,
        NEXT_PAGE
    }

    public Event(EventType eventType) {
        this.a = eventType;
    }

    public EventType a() {
        return this.a;
    }

    public void a(float f) {
        this.b = f;
    }

    public float b() {
        return this.b;
    }
}
