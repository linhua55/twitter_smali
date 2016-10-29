package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public final class qd extends b {
    public static boolean a() {
        return ((Boolean) cj.ak.c()).booleanValue();
    }

    private static boolean b() {
        return b.a(2) && a();
    }

    public static void e(String str) {
        if (b()) {
            Log.v("Ads", str);
        }
    }
}
