package com.facebook.common.references;

import defpackage.bx;
import defpackage.cb;
import java.util.IdentityHashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class SharedReference<T> {
    @GuardedBy("itself")
    private static final Map<Object, Integer> a;
    @GuardedBy("this")
    private T b;
    @GuardedBy("this")
    private int c;
    private final d<T> d;

    /* compiled from: Twttr */
    public class NullReferenceException extends RuntimeException {
        public NullReferenceException() {
            super("Null shared reference");
        }
    }

    static {
        a = new IdentityHashMap();
    }

    public SharedReference(T t, d<T> dVar) {
        this.b = bx.a((Object) t);
        this.d = (d) bx.a((Object) dVar);
        this.c = 1;
        a((Object) t);
    }

    private static void a(Object obj) {
        synchronized (a) {
            Integer num = (Integer) a.get(obj);
            if (num == null) {
                a.put(obj, Integer.valueOf(1));
            } else {
                a.put(obj, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private static void b(Object obj) {
        synchronized (a) {
            Integer num = (Integer) a.get(obj);
            if (num == null) {
                cb.c("SharedReference", "No entry in sLiveObjects for value of type %s", obj.getClass());
            } else if (num.intValue() == 1) {
                a.remove(obj);
            } else {
                a.put(obj, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public synchronized T a() {
        return this.b;
    }

    public synchronized boolean b() {
        return this.c > 0;
    }

    public static boolean a(SharedReference<?> sharedReference) {
        return sharedReference != null && sharedReference.b();
    }

    public synchronized void c() {
        f();
        this.c++;
    }

    public void d() {
        if (e() == 0) {
            Object obj;
            synchronized (this) {
                obj = this.b;
                this.b = null;
            }
            this.d.a(obj);
            b(obj);
        }
    }

    private synchronized int e() {
        f();
        bx.a(this.c > 0);
        this.c--;
        return this.c;
    }

    private void f() {
        if (!a(this)) {
            throw new NullReferenceException();
        }
    }
}
