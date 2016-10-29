package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;
import com.google.android.gms.internal.vj;

public class u extends cl {
    private Handler a;
    private long b;
    private final Runnable c;
    private final ao d;
    private final ao e;

    u(bx bxVar) {
        super(bxVar);
        this.c = new v(this);
        this.d = new x(this, this.n);
        this.e = new y(this, this.n);
    }

    @WorkerThread
    private void a(long j) {
        f();
        w();
        this.d.c();
        this.e.c();
        s().z().a("Activity resumed, time", Long.valueOf(j));
        this.b = j;
        if (l().a() - t().i.a() > t().k.a()) {
            t().j.a(true);
            t().l.a(0);
        }
        if (t().j.a()) {
            this.d.a(Math.max(0, t().h.a() - t().l.a()));
        } else {
            this.e.a(Math.max(0, 3600000 - t().l.a()));
        }
    }

    @WorkerThread
    private void b(long j) {
        f();
        w();
        this.d.c();
        this.e.c();
        s().z().a("Activity paused, time", Long.valueOf(j));
        if (this.b != 0) {
            t().l.a(t().l.a() + (j - this.b));
        }
        t().k.a(l().a());
        synchronized (this) {
            if (!t().j.a()) {
                this.a.postDelayed(this.c, 1000);
            }
        }
    }

    private void w() {
        synchronized (this) {
            if (this.a == null) {
                this.a = new Handler(Looper.getMainLooper());
            }
        }
    }

    @WorkerThread
    private void x() {
        f();
        s().z().a("Session started, time", Long.valueOf(l().b()));
        t().j.a(false);
        h().a("auto", "_s", new Bundle());
    }

    @WorkerThread
    private void y() {
        f();
        long b = l().b();
        if (this.b == 0) {
            this.b = b - 3600000;
        }
        long a = t().l.a() + (b - this.b);
        t().l.a(a);
        s().z().a("Recording user engagement, ms", Long.valueOf(a));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", a);
        h().a("auto", "_e", bundle);
        t().l.a(0);
        this.b = b;
        this.e.a(Math.max(0, 3600000 - t().l.a()));
    }

    protected void a() {
    }

    @MainThread
    protected void b() {
        synchronized (this) {
            w();
            this.a.removeCallbacks(this.c);
        }
        r().a(new z(this, l().b()));
    }

    @MainThread
    protected void c() {
        r().a(new aa(this, l().b()));
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    public /* bridge */ /* synthetic */ void f() {
        super.f();
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

    @WorkerThread
    public void v() {
        f();
        s().y().a("Application backgrounded. Logging engagement");
        long a = t().l.a();
        if (a > 0) {
            Bundle bundle = new Bundle();
            bundle.putLong("_et", a);
            h().a("auto", "_e", bundle);
            t().l.a(0);
            return;
        }
        s().c().a("Not logging non-positive engagement time", Long.valueOf(a));
    }
}
