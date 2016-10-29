package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;

/* compiled from: Twttr */
/* synthetic */ class x {
    static final /* synthetic */ int[] a;

    static {
        a = new int[PageLoadingEventType.values().length];
        try {
            a[PageLoadingEventType.START_BUFFERING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[PageLoadingEventType.THUMBNAIL_LOADED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[PageLoadingEventType.DONE_SUCCESS.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[PageLoadingEventType.DONE_FAILED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
