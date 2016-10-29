package com.facebook.datasource;

/* compiled from: Twttr */
public abstract class c<T> implements g<T> {
    protected abstract void e(d<T> dVar);

    protected abstract void f(d<T> dVar);

    public void a(d<T> dVar) {
        try {
            e(dVar);
            if (dVar.b()) {
                dVar.h();
            }
        } catch (Throwable th) {
            if (dVar.b()) {
                dVar.h();
            }
        }
    }

    public void b(d<T> dVar) {
        try {
            f(dVar);
        } finally {
            dVar.h();
        }
    }

    public void c(d<T> dVar) {
    }

    public void d(d<T> dVar) {
    }
}
