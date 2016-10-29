package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;

public class bt extends cl {
    private bw a;
    private bw b;
    private final BlockingQueue<FutureTask<?>> c;
    private final BlockingQueue<FutureTask<?>> d;
    private final UncaughtExceptionHandler e;
    private final UncaughtExceptionHandler f;
    private final Object g;
    private final Semaphore h;
    private volatile boolean i;

    bt(bx bxVar) {
        super(bxVar);
        this.g = new Object();
        this.h = new Semaphore(2);
        this.c = new LinkedBlockingQueue();
        this.d = new LinkedBlockingQueue();
        this.e = new bv(this, "Thread death: Uncaught exception on worker thread");
        this.f = new bv(this, "Thread death: Uncaught exception on network thread");
    }

    private void a(FutureTask<?> futureTask) {
        synchronized (this.g) {
            this.c.add(futureTask);
            if (this.a == null) {
                this.a = new bw(this, "Measurement Worker", this.c);
                this.a.setUncaughtExceptionHandler(this.e);
                this.a.start();
            } else {
                this.a.a();
            }
        }
    }

    private void b(FutureTask<?> futureTask) {
        synchronized (this.g) {
            this.d.add(futureTask);
            if (this.b == null) {
                this.b = new bw(this, "Measurement Network", this.d);
                this.b.setUncaughtExceptionHandler(this.f);
                this.b.start();
            } else {
                this.b.a();
            }
        }
    }

    public <V> Future<V> a(Callable<V> callable) throws IllegalStateException {
        G();
        bm.a((Object) callable);
        FutureTask buVar = new bu(this, callable, "Task exception on worker thread");
        if (Thread.currentThread() == this.a) {
            buVar.run();
        } else {
            a(buVar);
        }
        return buVar;
    }

    protected void a() {
    }

    public void a(Runnable runnable) throws IllegalStateException {
        G();
        bm.a((Object) runnable);
        a(new bu(this, runnable, "Task exception on worker thread"));
    }

    public void b(Runnable runnable) throws IllegalStateException {
        G();
        bm.a((Object) runnable);
        b(new bu(this, runnable, "Task exception on network thread"));
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public void e() {
        if (Thread.currentThread() != this.b) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public void f() {
        if (Thread.currentThread() != this.a) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public /* bridge */ /* synthetic */ ai g() {
        return super.g();
    }

    public /* bridge */ /* synthetic */ d h() {
        return super.h();
    }

    public /* bridge */ /* synthetic */ ba i() {
        return super.i();
    }

    public /* bridge */ /* synthetic */ aq j() {
        return super.j();
    }

    public /* bridge */ /* synthetic */ i k() {
        return super.k();
    }

    public /* bridge */ /* synthetic */ vj l() {
        return super.l();
    }

    public /* bridge */ /* synthetic */ Context m() {
        return super.m();
    }

    public /* bridge */ /* synthetic */ ak n() {
        return super.n();
    }

    public /* bridge */ /* synthetic */ ag o() {
        return super.o();
    }

    public /* bridge */ /* synthetic */ bs p() {
        return super.p();
    }

    public /* bridge */ /* synthetic */ u q() {
        return super.q();
    }

    public /* bridge */ /* synthetic */ bt r() {
        return super.r();
    }

    public /* bridge */ /* synthetic */ bc s() {
        return super.s();
    }

    public /* bridge */ /* synthetic */ bn t() {
        return super.t();
    }

    public /* bridge */ /* synthetic */ aj u() {
        return super.u();
    }
}
