package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.Event.EventType;

/* compiled from: Twttr */
/* synthetic */ class cf {
    static final /* synthetic */ int[] a;

    static {
        a = new int[EventType.values().length];
        try {
            a[EventType.ROTATE_LANDSCAPE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[EventType.ROTATE_PORTRAIT.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
