package com.facebook.common.references;

import bx;
import cb;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public final class a<T> implements Closeable, Cloneable {
    private static Class<a> a;
    private static final d<Closeable> b;
    @GuardedBy("this")
    private boolean c;
    private final SharedReference<T> d;

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return b();
    }

    static {
        a = a.class;
        b = new b();
    }

    private a(SharedReference<T> sharedReference) {
        this.c = false;
        this.d = (SharedReference) bx.a(sharedReference);
        sharedReference.c();
    }

    private a(T t, d<T> dVar) {
        this.c = false;
        this.d = new SharedReference(t, dVar);
    }

    @Nullable
    public static <T extends Closeable> a<T> a(@Nullable T t) {
        if (t == null) {
            return null;
        }
        return new a(t, b);
    }

    @Nullable
    public static <T> a<T> a(@Nullable T t, d<T> dVar) {
        if (t == null) {
            return null;
        }
        return new a(t, dVar);
    }

    public void close() {
        synchronized (this) {
            if (this.c) {
                return;
            }
            this.c = true;
            this.d.d();
        }
    }

    public synchronized T a() {
        bx.b(!this.c);
        return this.d.a();
    }

    public synchronized a<T> b() {
        bx.b(d());
        return new a(this.d);
    }

    public synchronized a<T> c() {
        return d() ? new a(this.d) : null;
    }

    public synchronized boolean d() {
        return !this.c;
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (this.c) {
                    return;
                }
                cb.b(a, "Finalized without closing: %x %x (type = %s)", new Object[]{Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.d)), this.d.a().getClass().getSimpleName()});
                close();
                super.finalize();
            }
        } finally {
            super.finalize();
        }
    }

    public synchronized int e() {
        return d() ? System.identityHashCode(this.d.a()) : 0;
    }

    public static boolean a(@Nullable a<?> aVar) {
        return aVar != null && aVar.d();
    }

    @Nullable
    public static <T> a<T> b(@Nullable a<T> aVar) {
        return aVar != null ? aVar.c() : null;
    }

    public static <T> List<a<T>> a(Collection<a<T>> collection) {
        if (collection == null) {
            return null;
        }
        List<a<T>> arrayList = new ArrayList(collection.size());
        for (a b : collection) {
            arrayList.add(b(b));
        }
        return arrayList;
    }

    public static void c(@Nullable a<?> aVar) {
        if (aVar != null) {
            aVar.close();
        }
    }

    public static void a(@Nullable Iterable<? extends a<?>> iterable) {
        if (iterable != null) {
            for (a c : iterable) {
                c(c);
            }
        }
    }
}
