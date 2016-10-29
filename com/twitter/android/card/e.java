package com.twitter.android.card;

/* compiled from: Twttr */
/* synthetic */ class e {
    static final /* synthetic */ int[] a;

    static {
        a = new int[CardActionHelper$AppStatus.values().length];
        try {
            a[CardActionHelper$AppStatus.INSTALLED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[CardActionHelper$AppStatus.NOT_INSTALLED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
