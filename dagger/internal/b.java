package dagger.internal;

import cxj;

/* compiled from: Twttr */
public final class b<T> implements cxj<T> {
    static final /* synthetic */ boolean a;
    private static final Object b;
    private volatile cxj<T> c;
    private volatile Object d;

    static {
        a = !b.class.desiredAssertionStatus();
        b = new Object();
    }

    private b(cxj<T> cxj_T) {
        this.d = b;
        if (a || cxj_T != null) {
            this.c = cxj_T;
            return;
        }
        throw new AssertionError();
    }

    public T b() {
        T t = this.d;
        if (t == b) {
            synchronized (this) {
                t = this.d;
                if (t == b) {
                    t = this.c.b();
                    T t2 = this.d;
                    if (t2 == b || t2 == t) {
                        this.d = t;
                        this.c = null;
                    } else {
                        String valueOf = String.valueOf("Scoped provider was invoked recursively returning different results: ");
                        String valueOf2 = String.valueOf(t2);
                        String valueOf3 = String.valueOf(t);
                        throw new IllegalStateException(new StringBuilder(((String.valueOf(valueOf).length() + 3) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()).append(valueOf).append(valueOf2).append(" & ").append(valueOf3).toString());
                    }
                }
            }
        }
        return t;
    }

    public static <T> cxj<T> a(cxj<T> cxj_T) {
        d.a(cxj_T);
        return cxj_T instanceof b ? cxj_T : new b(cxj_T);
    }
}
