package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.api.x;
import com.google.android.gms.common.internal.av;
import com.google.android.gms.common.internal.bm;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;

public abstract class e<R extends w> extends t<R> {
    protected final f<R> a;
    private final Object b;
    private final WeakReference<n> c;
    private final CountDownLatch d;
    private final ArrayList<u> e;
    private x<? super R> f;
    private volatile R g;
    private volatile boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private av l;
    private Integer m;
    private volatile ax<R> n;

    protected e(n nVar) {
        this.b = new Object();
        this.d = new CountDownLatch(1);
        this.e = new ArrayList();
        this.a = new f(nVar != null ? nVar.a() : Looper.getMainLooper());
        this.c = new WeakReference(nVar);
    }

    public static void b(w wVar) {
        if (wVar instanceof v) {
            try {
                ((v) wVar).a();
            } catch (Throwable e) {
                Log.w("BasePendingResult", "Unable to release " + wVar, e);
            }
        }
    }

    private void c(R r) {
        this.g = r;
        this.l = null;
        this.d.countDown();
        Status a = this.g.a();
        if (this.f != null) {
            this.a.a();
            if (!this.i) {
                this.a.a(this.f, i());
            }
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((u) it.next()).a(a);
        }
        this.e.clear();
    }

    private R i() {
        R r;
        boolean z = true;
        synchronized (this.b) {
            if (this.h) {
                z = false;
            }
            bm.a(z, "Result has already been consumed.");
            bm.a(e(), "Result is not ready.");
            r = this.g;
            this.g = null;
            this.f = null;
            this.h = true;
        }
        d();
        return r;
    }

    public Integer a() {
        return this.m;
    }

    public final void a(u uVar) {
        boolean z = true;
        bm.a(!this.h, "Result has already been consumed.");
        if (uVar == null) {
            z = false;
        }
        bm.b(z, "Callback cannot be null.");
        synchronized (this.b) {
            if (e()) {
                uVar.a(this.g.a());
            } else {
                this.e.add(uVar);
            }
        }
    }

    public final void a(R r) {
        boolean z = true;
        synchronized (this.b) {
            if (this.j || this.i) {
                b((w) r);
                return;
            }
            bm.a(!e(), "Results have already been set");
            if (this.h) {
                z = false;
            }
            bm.a(z, "Result has already been consumed");
            c((w) r);
        }
    }

    public final void a(x<? super R> xVar) {
        boolean z = true;
        bm.a(!this.h, "Result has already been consumed.");
        synchronized (this.b) {
            if (this.n != null) {
                z = false;
            }
            bm.a(z, "Cannot set callbacks if then() has been called.");
            if (h()) {
            } else if (!this.k || (((n) this.c.get()) != null && (xVar instanceof ax))) {
                if (e()) {
                    this.a.a(xVar, i());
                } else {
                    this.f = xVar;
                }
            } else {
                f();
            }
        }
    }

    public final void b(Status status) {
        synchronized (this.b) {
            if (!e()) {
                a(c(status));
                this.j = true;
            }
        }
    }

    protected abstract R c(Status status);

    protected void d() {
    }

    public final boolean e() {
        return this.d.getCount() == 0;
    }

    public void f() {
        synchronized (this.b) {
            if (this.i || this.h) {
                return;
            }
            if (this.l != null) {
                try {
                    this.l.a();
                } catch (RemoteException e) {
                }
            }
            b(this.g);
            this.f = null;
            this.i = true;
            c(c(Status.e));
        }
    }

    public void g() {
        synchronized (this.b) {
            if (((n) this.c.get()) == null) {
                f();
                return;
            }
            if (this.f == null || (this.f instanceof ax)) {
                this.k = true;
            } else {
                f();
            }
        }
    }

    public boolean h() {
        boolean z;
        synchronized (this.b) {
            z = this.i;
        }
        return z;
    }
}
