package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.Event.EventType;

/* compiled from: Twttr */
/* synthetic */ class hc {
    static final /* synthetic */ int[] a;

    static {
        a = new int[EventType.values().length];
        try {
            a[EventType.CHROME_MODE_LOCAL_NO_ANIM.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[EventType.CHROME_MODE_LOCAL.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[EventType.CHROME_MODE_GLOBAL.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[EventType.TAP.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
