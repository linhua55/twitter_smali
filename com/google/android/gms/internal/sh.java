package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@oi
public class sh<T> implements sm<T> {
    private final T a;
    private final sn b;

    public sh(T t) {
        this.a = t;
        this.b = new sn();
        this.b.a();
    }

    public void a(Runnable runnable) {
        this.b.a(runnable);
    }

    public boolean cancel(boolean z) {
        return false;
    }

    public T get() {
        return this.a;
    }

    public T get(long j, TimeUnit timeUnit) {
        return this.a;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return true;
    }
}
