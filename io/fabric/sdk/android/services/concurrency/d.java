package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask.Status;

/* compiled from: Twttr */
/* synthetic */ class d {
    static final /* synthetic */ int[] a;

    static {
        a = new int[Status.values().length];
        try {
            a[Status.RUNNING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[Status.FINISHED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
