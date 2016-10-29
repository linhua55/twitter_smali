package com.facebook.datasource;

import bc;
import bz;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
class j extends AbstractDataSource<T> {
    final /* synthetic */ h a;
    private int b;
    private d<T> c;
    private d<T> d;

    public j(h hVar) {
        this.a = hVar;
        this.b = 0;
        this.c = null;
        this.d = null;
        if (!j()) {
            a(new RuntimeException("No data source supplier or supplier returned null."));
        }
    }

    @Nullable
    public synchronized T d() {
        d l;
        l = l();
        return l != null ? l.d() : null;
    }

    public synchronized boolean c() {
        boolean z;
        d l = l();
        z = l != null && l.c();
        return z;
    }

    public boolean h() {
        synchronized (this) {
            if (super.h()) {
                d dVar = this.c;
                this.c = null;
                d dVar2 = this.d;
                this.d = null;
                e(dVar2);
                e(dVar);
                return true;
            }
            return false;
        }
    }

    private boolean j() {
        bz k = k();
        d dVar = k != null ? (d) k.a() : null;
        if (!a(dVar) || dVar == null) {
            e(dVar);
            return false;
        }
        dVar.a(new k(this, null), bc.a());
        return true;
    }

    @Nullable
    private synchronized bz<d<T>> k() {
        bz<d<T>> bzVar;
        if (a() || this.b >= h.a(this.a).size()) {
            bzVar = null;
        } else {
            List a = h.a(this.a);
            int i = this.b;
            this.b = i + 1;
            bzVar = (bz) a.get(i);
        }
        return bzVar;
    }

    private synchronized boolean a(d<T> dVar) {
        boolean z;
        if (a()) {
            z = false;
        } else {
            this.c = dVar;
            z = true;
        }
        return z;
    }

    private synchronized boolean b(d<T> dVar) {
        boolean z;
        if (a() || dVar != this.c) {
            z = false;
        } else {
            this.c = null;
            z = true;
        }
        return z;
    }

    @Nullable
    private synchronized d<T> l() {
        return this.d;
    }

    private void a(d<T> dVar, boolean z) {
        d dVar2 = null;
        synchronized (this) {
            if (dVar != this.c || dVar == this.d) {
                return;
            }
            if (this.d == null || z) {
                dVar2 = this.d;
                this.d = dVar;
            }
            e(dVar2);
        }
    }

    private void c(d<T> dVar) {
        if (b(dVar)) {
            if (dVar != l()) {
                e(dVar);
            }
            if (!j()) {
                a(dVar.f());
            }
        }
    }

    private void d(d<T> dVar) {
        a((d) dVar, dVar.b());
        if (dVar == l()) {
            a(null, dVar.b());
        }
    }

    private void e(d<T> dVar) {
        if (dVar != null) {
            dVar.h();
        }
    }
}
