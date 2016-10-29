package com.evernote.android.job;

/* compiled from: Twttr */
/* synthetic */ class l {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JobRequest$BackoffPolicy.values().length];
        try {
            a[JobRequest$BackoffPolicy.LINEAR.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JobRequest$BackoffPolicy.EXPONENTIAL.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
