package com.twitter.util;

import com.twitter.config.AppConfig;
import com.twitter.util.concurrent.n;
import defpackage.bbn;
import defpackage.cwj;

/* compiled from: Twttr */
public class j {
    private static final ThreadLocal<Boolean> a;

    static {
        a = new ThreadLocal();
    }

    public static boolean b() {
        Boolean bool = (Boolean) a.get();
        return bool == null || bool.booleanValue();
    }

    public static void a(boolean z) {
        a.set(Boolean.valueOf(z));
    }

    public static void c() {
        if (!b()) {
            b(String.format("'%s' is blocking and must not be called from this thread", new Object[]{a(4)}));
        }
    }

    public static <T> T a(n<T> nVar) {
        boolean b = b();
        try {
            a(true);
            T call = nVar.call();
            return call;
        } finally {
            a(b);
        }
    }

    public static void d() {
        if (!cwj.a()) {
            b(String.format("'%s' must be called from a test suite", new Object[]{a(4)}));
        }
    }

    public static void a(String str) {
        b(str);
    }

    public static boolean b(boolean z) {
        return a(z, "Assertion failed.");
    }

    public static boolean a(boolean z, String str) {
        if (!z) {
            b(str);
        }
        return z;
    }

    public static boolean e() {
        return cwj.b() || (AppConfig.n() && AppConfig.m().p());
    }

    protected static String a(int i) {
        return Thread.currentThread().getStackTrace()[i].getMethodName();
    }

    protected static void b(String str) {
        if (e()) {
            throw new AssertionError(str);
        }
        bbn.a(new AssertionError(str));
    }
}
