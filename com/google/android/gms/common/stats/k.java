package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.vi;
import com.google.android.gms.internal.vn;
import java.util.List;

public class k {
    private static String a;
    private static k b;
    private static Integer c;

    static {
        a = "WakeLockTracker";
        b = new k();
    }

    public static k a() {
        return b;
    }

    private static boolean a(Context context) {
        if (c == null) {
            c = Integer.valueOf(b());
        }
        return c.intValue() != f.b;
    }

    private static int b() {
        try {
            return vi.a() ? ((Integer) e.a.c()).intValue() : f.b;
        } catch (SecurityException e) {
            return f.b;
        }
    }

    public void a(Context context, String str, int i, String str2, String str3, int i2, List<String> list) {
        a(context, str, i, str2, str3, i2, list, 0);
    }

    public void a(Context context, String str, int i, String str2, String str3, int i2, List<String> list, long j) {
        if (!a(context)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.e(a, "missing wakeLock key. " + str);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (7 == i || 8 == i || 10 == i || 11 == i) {
            try {
                context.startService(new Intent().setComponent(f.a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(currentTimeMillis, i, str2, i2, list, str, SystemClock.elapsedRealtime(), vn.a(context), str3, context.getPackageName(), vn.b(context), j)));
            } catch (Throwable e) {
                Log.wtf(a, e);
            }
        }
    }
}
