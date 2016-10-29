package com.facebook.imagepipeline.producers;

/* compiled from: Twttr */
/* synthetic */ class al {
    static final /* synthetic */ int[] a;

    static {
        a = new int[JobState.values().length];
        try {
            a[JobState.IDLE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[JobState.QUEUED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[JobState.RUNNING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[JobState.RUNNING_AND_PENDING.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
