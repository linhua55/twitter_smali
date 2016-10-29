package com.facebook.cache.common;

import com.facebook.cache.common.CacheEventListener.EvictionReason;

/* compiled from: Twttr */
public class c implements CacheEventListener {
    private static c a;

    static {
        a = null;
    }

    private c() {
    }

    public static synchronized c f() {
        c cVar;
        synchronized (c.class) {
            if (a == null) {
                a = new c();
            }
            cVar = a;
        }
        return cVar;
    }

    public void a() {
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }

    public void a(EvictionReason evictionReason, int i, long j) {
    }
}
