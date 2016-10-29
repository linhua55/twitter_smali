package com.twitter.platform;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.twitter.util.al;

/* compiled from: Twttr */
class e implements t {
    private e() {
    }

    public long a() {
        return al.b();
    }

    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @TargetApi(17)
    public long c() {
        if (VERSION.SDK_INT >= 17) {
            return SystemClock.elapsedRealtimeNanos();
        }
        return System.nanoTime();
    }
}
