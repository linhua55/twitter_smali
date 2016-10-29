package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class AsyncTask<Params, Progress, Result> {
    private static final int a;
    public static final Executor b;
    public static final Executor c;
    private static final int d;
    private static final int e;
    private static final ThreadFactory f;
    private static final BlockingQueue<Runnable> g;
    private static final f h;
    private static volatile Executor i;
    private final i<Params, Result> j;
    private final FutureTask<Result> k;
    private volatile Status l;
    private final AtomicBoolean m;
    private final AtomicBoolean n;

    /* compiled from: Twttr */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result a(Params... paramsArr);

    static {
        a = Runtime.getRuntime().availableProcessors();
        d = a + 1;
        e = (a * 2) + 1;
        f = new a();
        g = new LinkedBlockingQueue(128);
        b = new ThreadPoolExecutor(d, e, 1, TimeUnit.SECONDS, g, f);
        c = new g();
        h = new f();
        i = c;
    }

    public AsyncTask() {
        this.l = Status.PENDING;
        this.m = new AtomicBoolean();
        this.n = new AtomicBoolean();
        this.j = new b(this);
        this.k = new c(this, this.j);
    }

    private void d(Result result) {
        if (!this.n.get()) {
            e(result);
        }
    }

    private Result e(Result result) {
        h.obtainMessage(1, new e(this, result)).sendToTarget();
        return result;
    }

    public final Status bp_() {
        return this.l;
    }

    protected void a() {
    }

    protected void a(Result result) {
    }

    protected void b(Progress... progressArr) {
    }

    protected void b(Result result) {
        bq_();
    }

    protected void bq_() {
    }

    public final boolean e() {
        return this.m.get();
    }

    public final boolean a(boolean z) {
        this.m.set(true);
        return this.k.cancel(z);
    }

    public final AsyncTask<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.l != Status.PENDING) {
            switch (d.a[this.l.ordinal()]) {
                case p.View_android_focusable /*1*/:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case p.View_paddingStart /*2*/:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.l = Status.RUNNING;
        a();
        this.j.b = paramsArr;
        executor.execute(this.k);
        return this;
    }

    private void f(Result result) {
        if (e()) {
            b((Object) result);
        } else {
            a((Object) result);
        }
        this.l = Status.FINISHED;
    }
}
