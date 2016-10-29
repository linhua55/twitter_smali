package com.twitter.android.av.audio;

/* compiled from: Twttr */
/* synthetic */ class k {
    static final /* synthetic */ int[] a;

    static {
        a = new int[AudioCardError.values().length];
        try {
            a[AudioCardError.NOT_FOUND.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[AudioCardError.INTERNAL_ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[AudioCardError.UNKNOWN.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[AudioCardError.FORBIDDEN_UNKNOWN.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[AudioCardError.FORBIDDEN_DEFAULT.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[AudioCardError.FORBIDDEN_GEOBLOCKED.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            a[AudioCardError.FORBIDDEN_NOT_SUPPORTED.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            a[AudioCardError.FORBIDDEN_RESTRICTED.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
    }
}
