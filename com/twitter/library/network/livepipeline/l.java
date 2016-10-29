package com.twitter.library.network.livepipeline;

/* compiled from: Twttr */
/* synthetic */ class l {
    static final /* synthetic */ int[] a;

    static {
        a = new int[CallbackContext.values().length];
        try {
            a[CallbackContext.UI_THREAD.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[CallbackContext.CURRENT_THREAD.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[CallbackContext.IO.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[CallbackContext.COMPUTATIONAL.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
