package com.facebook.common.memory;

/* compiled from: Twttr */
public class c implements b {
    private static c a;

    static {
        a = null;
    }

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (a == null) {
                a = new c();
            }
            cVar = a;
        }
        return cVar;
    }

    public void a(a aVar) {
    }
}
