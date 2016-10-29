package defpackage;

import android.os.Handler;
import android.os.Looper;
import bvi;

/* compiled from: Twttr */
/* renamed from: bvh */
public abstract class bvh {
    private static final Handler a;

    static {
        a = new Handler(Looper.getMainLooper());
    }

    public static void a(long j, long j2) {
        if (j2 == 0) {
            bvh.a(j);
        } else {
            a.postDelayed(new bvi(j), j2);
        }
    }

    public static void a(long j) {
        bvj.b(j);
        bvj.c();
    }

    public static void a() {
        bvj.c();
    }
}
