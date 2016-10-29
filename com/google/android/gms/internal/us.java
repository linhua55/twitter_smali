package com.google.android.gms.internal;

import android.os.Binder;

public abstract class us<T> {
    private static final Object c;
    private static ux d;
    private static int e;
    private static String f;
    protected final String a;
    protected final T b;
    private T g;

    static {
        c = new Object();
        d = null;
        e = 0;
        f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    }

    protected us(String str, T t) {
        this.g = null;
        this.a = str;
        this.b = t;
    }

    public static int a() {
        return e;
    }

    public static us<Integer> a(String str, Integer num) {
        return new uv(str, num);
    }

    public static us<Long> a(String str, Long l) {
        return new uu(str, l);
    }

    public static us<String> a(String str, String str2) {
        return new uw(str, str2);
    }

    public static us<Boolean> a(String str, boolean z) {
        return new ut(str, Boolean.valueOf(z));
    }

    public static boolean b() {
        return d != null;
    }

    protected abstract T a(String str);

    public final T c() {
        return this.g != null ? this.g : a(this.a);
    }

    public final T d() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            T c = c();
            return c;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
