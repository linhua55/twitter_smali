package com.facebook.imagepipeline.producers;

import defpackage.cb;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public abstract class d<T> implements o<T> {
    private boolean a;

    protected abstract void a();

    protected abstract void a(T t, boolean z);

    protected abstract void a(Throwable th);

    public d() {
        this.a = false;
    }

    public synchronized void b(@Nullable T t, boolean z) {
        if (!this.a) {
            this.a = z;
            try {
                a(t, z);
            } catch (Exception e) {
                a(e);
            }
        }
    }

    public synchronized void b(Throwable th) {
        if (!this.a) {
            this.a = true;
            try {
                a(th);
            } catch (Exception e) {
                a(e);
            }
        }
    }

    public synchronized void b() {
        if (!this.a) {
            this.a = true;
            try {
                a();
            } catch (Exception e) {
                a(e);
            }
        }
    }

    public synchronized void b(float f) {
        if (!this.a) {
            try {
                a(f);
            } catch (Exception e) {
                a(e);
            }
        }
    }

    protected void a(float f) {
    }

    protected void a(Exception exception) {
        cb.c(getClass(), "unhandled exception", (Throwable) exception);
    }
}
