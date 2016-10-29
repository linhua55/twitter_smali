package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.android.exoplayer.hls.HlsChunkSource;

public final class vn {
    private static IntentFilter a;
    private static long b;
    private static float c;

    static {
        a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        c = Float.NaN;
    }

    @TargetApi(20)
    public static int a(Context context) {
        int i = 1;
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, a);
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        int i3 = (vu.h() ? powerManager.isInteractive() : powerManager.isScreenOn() ? 1 : 0) << 1;
        if (i2 == 0) {
            i = 0;
        }
        return i3 | i;
    }

    public static synchronized float b(Context context) {
        float f;
        synchronized (vn.class) {
            if (SystemClock.elapsedRealtime() - b >= HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS || c == Float.NaN) {
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, a);
                if (registerReceiver != null) {
                    c = ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
                }
                b = SystemClock.elapsedRealtime();
                f = c;
            } else {
                f = c;
            }
        }
        return f;
    }
}
