package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.Event.EventType;

/* compiled from: Twttr */
/* synthetic */ class ex {
    static final /* synthetic */ int[] a;

    static {
        a = new int[EventType.values().length];
        try {
            a[EventType.NEXT_PAGE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[EventType.PREVIOUS_PAGE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
