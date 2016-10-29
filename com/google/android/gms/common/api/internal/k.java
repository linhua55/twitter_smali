package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.w;

public class k implements ag {
    private final ah a;
    private boolean b;

    public k(ah ahVar) {
        this.b = false;
        this.a = ahVar;
    }

    private <A extends h> void a(af<A> afVar) throws DeadObjectException {
        this.a.g.a((af) afVar);
        h a = this.a.g.a(afVar.b());
        if (a.e() || !this.a.b.containsKey(afVar.b())) {
            afVar.a(a);
        } else {
            afVar.a(new Status(17));
        }
    }

    public <A extends h, R extends w, T extends c<R, A>> T a(T t) {
        return b(t);
    }

    public void a() {
    }

    public void a(int i) {
        this.a.a(null);
        this.a.h.a(i, this.b);
    }

    public void a(Bundle bundle) {
    }

    public void a(ConnectionResult connectionResult, a<?> aVar, int i) {
    }

    public <A extends h, T extends c<? extends w, A>> T b(T t) {
        try {
            a((af) t);
        } catch (DeadObjectException e) {
            this.a.a(new l(this, this));
        }
        return t;
    }

    public boolean b() {
        if (this.b) {
            return false;
        }
        if (this.a.g.j()) {
            this.b = true;
            for (ax a : this.a.g.i) {
                a.a();
            }
            return false;
        }
        this.a.a(null);
        return true;
    }

    public void c() {
        if (this.b) {
            this.b = false;
            this.a.a(new m(this, this));
        }
    }

    void d() {
        if (this.b) {
            this.b = false;
            this.a.g.a(false);
            b();
        }
    }
}
