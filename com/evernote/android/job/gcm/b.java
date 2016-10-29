package com.evernote.android.job.gcm;

import com.evernote.android.job.JobRequest$NetworkType;

/* compiled from: Twttr */
/* synthetic */ class b {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JobRequest$NetworkType.values().length];
        try {
            a[JobRequest$NetworkType.ANY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JobRequest$NetworkType.CONNECTED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JobRequest$NetworkType.UNMETERED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
