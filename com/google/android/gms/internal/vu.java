package com.google.android.gms.internal;

import android.os.Build.VERSION;

public final class vu {
    public static boolean a() {
        return a(11);
    }

    private static boolean a(int i) {
        return VERSION.SDK_INT >= i;
    }

    public static boolean b() {
        return a(13);
    }

    public static boolean c() {
        return a(14);
    }

    public static boolean d() {
        return a(16);
    }

    public static boolean e() {
        return a(17);
    }

    public static boolean f() {
        return a(18);
    }

    public static boolean g() {
        return a(19);
    }

    public static boolean h() {
        return a(20);
    }

    @Deprecated
    public static boolean i() {
        return j();
    }

    public static boolean j() {
        return a(21);
    }

    public static boolean k() {
        return a(23);
    }
}
