package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;

/* compiled from: Twttr */
/* synthetic */ class cp {
    static final /* synthetic */ int[] a;

    static {
        a = new int[PageLoadingEventType.values().length];
        try {
            a[PageLoadingEventType.SHOWN_ON_SCREEN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[PageLoadingEventType.DONE_SUCCESS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[PageLoadingEventType.DONE_FAILED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
