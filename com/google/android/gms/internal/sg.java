package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@oi
public class sg<T> implements sm<T> {
    private final Object a;
    private T b;
    private boolean c;
    private boolean d;
    private final sn e;

    public sg() {
        this.a = new Object();
        this.b = null;
        this.c = false;
        this.d = false;
        this.e = new sn();
    }

    public void a(Runnable runnable) {
        this.e.a(runnable);
    }

    public void b(T t) {
        synchronized (this.a) {
            if (this.d) {
            } else if (this.c) {
                throw new IllegalStateException("Provided CallbackFuture with multiple values.");
            } else {
                this.c = true;
                this.b = t;
                this.a.notifyAll();
                this.e.a();
            }
        }
    }

    public void b(Runnable runnable) {
        this.e.b(runnable);
    }

    public boolean cancel(boolean z) {
        if (!z) {
            return false;
        }
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.d = true;
            this.c = true;
            this.a.notifyAll();
            this.e.a();
            return true;
        }
    }

    public T get() {
        T t;
        synchronized (this.a) {
            if (!this.c) {
                try {
                    this.a.wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.d) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            t = this.b;
        }
        return t;
    }

    public T get(long j, TimeUnit timeUnit) throws TimeoutException {
        T t;
        synchronized (this.a) {
            if (!this.c) {
                try {
                    long toMillis = timeUnit.toMillis(j);
                    if (toMillis != 0) {
                        this.a.wait(toMillis);
                    }
                } catch (InterruptedException e) {
                }
            }
            if (!this.c) {
                throw new TimeoutException("CallbackFuture timed out.");
            } else if (this.d) {
                throw new CancellationException("CallbackFuture was cancelled.");
            } else {
                t = this.b;
            }
        }
        return t;
    }

    public boolean isCancelled() {
        boolean z;
        synchronized (this.a) {
            z = this.d;
        }
        return z;
    }

    public boolean isDone() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }
}
