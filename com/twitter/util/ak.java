package com.twitter.util;

import android.content.Context;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;

/* compiled from: Twttr */
public abstract class ak {
    private static float a;
    private static float b;
    private static float c;
    private static float d;
    private static boolean e;
    private static String f;

    static {
        a = 1.0f;
        b = 1.0f;
    }

    public static void a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        a = displayMetrics.density;
        b = displayMetrics.scaledDensity;
        c = (float) ViewConfiguration.get(context).getScaledTouchSlop();
        d = d() * d();
        e = a.a(context);
        f = Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String a() {
        return f;
    }

    public static int a(float f) {
        return (int) (b() * f);
    }

    public static float b() {
        return a;
    }

    public static float c() {
        return b;
    }

    public static float d() {
        return c;
    }

    public static float e() {
        return d;
    }

    public static boolean f() {
        return e;
    }

    public static void a(boolean z) {
        e = z;
    }
}
