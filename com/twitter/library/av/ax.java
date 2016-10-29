package com.twitter.library.av;

/* compiled from: Twttr */
/* synthetic */ class ax {
    static final /* synthetic */ int[] a;

    static {
        a = new int[ScaleType.values().length];
        try {
            a[ScaleType.FIT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[ScaleType.FILL.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
