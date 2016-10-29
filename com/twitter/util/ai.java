package com.twitter.util;

import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.VmPolicy;
import com.twitter.config.AppConfig;

/* compiled from: Twttr */
public class ai {
    private static ThreadPolicy a;
    private static VmPolicy b;

    static {
        a = ThreadPolicy.LAX;
        b = VmPolicy.LAX;
    }

    public static void a(ThreadPolicy threadPolicy) {
        h.a();
        a = threadPolicy;
    }

    public static void a(VmPolicy vmPolicy) {
        h.a();
        b = vmPolicy;
    }

    public static void a(boolean z) {
        if (AppConfig.m().a()) {
            h.a();
            StrictMode.setThreadPolicy(z ? a : ThreadPolicy.LAX);
        }
    }

    public static void b(boolean z) {
        if (AppConfig.m().a()) {
            h.a();
            StrictMode.setVmPolicy(z ? b : VmPolicy.LAX);
        }
    }
}
