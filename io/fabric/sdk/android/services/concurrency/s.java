package io.fabric.sdk.android.services.concurrency;

import android.annotation.TargetApi;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class s extends ThreadPoolExecutor {
    private static final int a;
    private static final int b;
    private static final int c;

    public /* synthetic */ BlockingQueue getQueue() {
        return b();
    }

    static {
        a = Runtime.getRuntime().availableProcessors();
        b = a + 1;
        c = (a * 2) + 1;
    }

    <T extends Runnable & j & u & q> s(int i, int i2, long j, TimeUnit timeUnit, DependencyPriorityBlockingQueue<T> dependencyPriorityBlockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, dependencyPriorityBlockingQueue, threadFactory);
        prestartAllCoreThreads();
    }

    public static <T extends Runnable & j & u & q> s a(int i, int i2) {
        return new s(i, i2, 1, TimeUnit.SECONDS, new DependencyPriorityBlockingQueue(), new t(10));
    }

    public static s a() {
        return a(b, c);
    }

    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new p(runnable, t);
    }

    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new p(callable);
    }

    @TargetApi(9)
    public void execute(Runnable runnable) {
        if (r.a((Object) runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    protected void afterExecute(Runnable runnable, Throwable th) {
        u uVar = (u) runnable;
        uVar.b(true);
        uVar.a(th);
        b().d();
        super.afterExecute(runnable, th);
    }

    public DependencyPriorityBlockingQueue b() {
        return (DependencyPriorityBlockingQueue) super.getQueue();
    }
}
