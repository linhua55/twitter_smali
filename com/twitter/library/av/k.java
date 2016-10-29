package com.twitter.library.av;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;

/* compiled from: Twttr */
final class k implements j {
    private long b;

    k() {
        this.b = -1;
    }

    public long a(Context context) {
        if (this.b <= 0) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            MemoryInfo memoryInfo = new MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            this.b = memoryInfo.totalMem;
        }
        return this.b;
    }
}
