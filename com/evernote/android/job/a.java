package com.evernote.android.job;

/* compiled from: Twttr */
/* synthetic */ class a {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JobRequest$NetworkType.values().length];
        try {
            a[JobRequest$NetworkType.ANY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JobRequest$NetworkType.UNMETERED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JobRequest$NetworkType.CONNECTED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
