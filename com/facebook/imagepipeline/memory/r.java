package com.facebook.imagepipeline.memory;

/* compiled from: Twttr */
public class r implements z {
    private static r a;

    static {
        a = null;
    }

    private r() {
    }

    public static synchronized r a() {
        r rVar;
        synchronized (r.class) {
            if (a == null) {
                a = new r();
            }
            rVar = a;
        }
        return rVar;
    }

    public void a(BasePool basePool) {
    }

    public void a(int i) {
    }

    public void b() {
    }

    public void c() {
    }

    public void b(int i) {
    }

    public void c(int i) {
    }

    public void d(int i) {
    }
}
