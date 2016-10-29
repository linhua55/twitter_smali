package com.twitter.util.concurrent;

import com.twitter.util.j;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: Twttr */
public class l<V> extends FutureTask<V> {
    private static final l a;
    private static final l b;
    private static final Callable c;

    static {
        c = new m();
        a = new l();
        a.set(null);
        b = new l();
        b.e();
    }

    public static <V> l<V> d() {
        return a;
    }

    public l() {
        super(c);
    }

    public void setException(Throwable th) {
        if (th instanceof Exception) {
            super.setException(th);
            return;
        }
        throw new IllegalArgumentException("The throwable must extend Exception", th);
    }

    public final void run() {
        throw new UnsupportedOperationException("Promises are not meant to be run");
    }

    public V get() throws InterruptedException, ExecutionException {
        if (!isDone()) {
            j.c();
        }
        return super.get();
    }

    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (!isDone()) {
            j.c();
        }
        return super.get(j, timeUnit);
    }

    public void set(V v) {
        super.set(v);
    }

    public boolean e() {
        return cancel(false);
    }

    protected void done() {
        if (isCancelled()) {
            bi_();
        } else {
            try {
                b(get());
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
                b((Exception) e2.getCause());
            }
        }
        c();
    }

    protected void c() {
    }

    protected void b(V v) {
    }

    protected void b(Exception exception) {
    }

    protected void bi_() {
    }
}
