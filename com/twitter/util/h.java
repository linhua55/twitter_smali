package com.twitter.util;

import android.os.Looper;
import defpackage.cwj;

/* compiled from: Twttr */
public abstract class h extends j {
    public static void a() {
        if (!cwj.b() && !c.a()) {
            j.b(String.format("'%s' must be called from main thread", new Object[]{j.a(4)}));
        }
    }

    public static void a(Looper looper) {
        if (!cwj.b() && Looper.myLooper() != looper) {
            j.b(String.format("'%s' must be called with looper '%s'", new Object[]{j.a(4), looper.getThread().getName()}));
        }
    }
}
