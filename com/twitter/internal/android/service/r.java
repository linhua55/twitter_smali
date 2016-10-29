package com.twitter.internal.android.service;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: Twttr */
public class r extends AbstractExecutorService {
    private final x a;
    private final ArrayDeque<w> b;
    private final ReentrantLock c;
    private final Condition d;
    private w e;
    private boolean f;

    public r(x xVar) {
        this.b = new ArrayDeque();
        this.c = new ReentrantLock();
        this.d = this.c.newCondition();
        this.f = false;
        this.a = xVar;
    }

    protected <S> RunnableFuture<S> newTaskFor(Runnable runnable, S s) {
        if (runnable instanceof w) {
            runnable = (w) runnable;
        } else {
            Object sVar = new s(this, 1, runnable);
        }
        return new v(runnable, s);
    }

    public void execute(Runnable runnable) {
        this.c.lock();
        try {
            if (isShutdown()) {
                throw new RejectedExecutionException();
            }
            this.b.offer(new t(this, ((v) runnable).a, runnable));
            if (this.e == null) {
                a();
            }
            this.c.unlock();
        } catch (Throwable th) {
            this.c.unlock();
        }
    }

    protected void a() {
        this.c.lock();
        try {
            w wVar = (w) this.b.poll();
            this.e = wVar;
            if (wVar != null) {
                this.a.submit(this.e);
            }
            this.c.unlock();
        } catch (Throwable th) {
            this.c.unlock();
        }
    }

    public void shutdown() {
        this.f = true;
    }

    public List<Runnable> shutdownNow() {
        this.c.lock();
        List<Runnable> arrayList = new ArrayList(this.b.size());
        try {
            shutdown();
            while (!this.b.isEmpty()) {
                arrayList.add(this.b.poll());
            }
            return arrayList;
        } finally {
            this.c.unlock();
        }
    }

    public boolean isShutdown() {
        return this.f;
    }

    public boolean isTerminated() {
        return isShutdown() && this.b.isEmpty();
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        long toNanos = timeUnit.toNanos(j);
        this.c.lock();
        while (!isTerminated()) {
            if (toNanos <= 0) {
                return false;
            }
            try {
                toNanos = this.d.awaitNanos(toNanos);
            } finally {
                this.c.unlock();
            }
        }
        this.c.unlock();
        return true;
    }
}
