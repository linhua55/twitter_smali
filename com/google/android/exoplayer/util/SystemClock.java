package com.google.android.exoplayer.util;

/* compiled from: Twttr */
public final class SystemClock implements Clock {
    public long elapsedRealtime() {
        return android.os.SystemClock.elapsedRealtime();
    }
}
