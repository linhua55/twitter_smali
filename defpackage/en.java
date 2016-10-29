package defpackage;

import android.app.ActivityManager;
import android.os.Build.VERSION;
import bz;

/* compiled from: Twttr */
/* renamed from: en */
public class en implements bz<ex> {
    private final ActivityManager a;

    public /* synthetic */ Object a() {
        return b();
    }

    public en(ActivityManager activityManager) {
        this.a = activityManager;
    }

    public ex b() {
        return new ex(c(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    private int c() {
        int min = Math.min(this.a.getMemoryClass() * 1048576, Integer.MAX_VALUE);
        if (min < 33554432) {
            return 4194304;
        }
        if (min < 67108864) {
            return 6291456;
        }
        if (VERSION.SDK_INT < 11) {
            return 8388608;
        }
        return min / 4;
    }
}
