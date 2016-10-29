package com.twitter.library.api.timeline;

/* compiled from: Twttr */
/* synthetic */ class aj {
    static final /* synthetic */ int[] a;

    static {
        a = new int[TimelineHelper$PrefetchOrder.values().length];
        try {
            a[TimelineHelper$PrefetchOrder.NEWEST_FIRST.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[TimelineHelper$PrefetchOrder.OLDEST_FIRST.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[TimelineHelper$PrefetchOrder.DEFAULT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
