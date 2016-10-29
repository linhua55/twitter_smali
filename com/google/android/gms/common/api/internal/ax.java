package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.aa;
import com.google.android.gms.common.api.internal.ax$com.google.android.gms.common.api.internal.az;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.api.x;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.api.z;
import com.google.android.gms.common.internal.bm;
import java.lang.ref.WeakReference;

public class ax<R extends w> extends aa<R> implements x<R> {
    private z<? super R, ? extends w> a;
    private ax<? extends w> b;
    private y<? super R> c;
    private t<R> d;
    private final Object e;
    private Status f;
    private final WeakReference<n> g;
    private final az h;

    private void a(Status status) {
        synchronized (this.e) {
            this.f = status;
            b(this.f);
        }
    }

    private void b() {
        if (this.a != null || this.c != null) {
            n nVar = (n) this.g.get();
            if (!(this.a == null || nVar == null)) {
                nVar.a(this);
            }
            if (this.f != null) {
                b(this.f);
            } else if (this.d != null) {
                this.d.a((x) this);
            }
        }
    }

    private void b(Status status) {
        synchronized (this.e) {
            if (this.a != null) {
                Status a = this.a.a(status);
                bm.a(a, "onFailure must not return null");
                this.b.a(a);
            } else if (c()) {
                this.c.a(status);
            }
        }
    }

    private void b(w wVar) {
        if (wVar instanceof v) {
            try {
                ((v) wVar).a();
            } catch (Throwable e) {
                Log.w("TransformedResultImpl", "Unable to release " + wVar, e);
            }
        }
    }

    private boolean c() {
        return (this.c == null || ((n) this.g.get()) == null) ? false : true;
    }

    void a() {
        synchronized (this.e) {
            this.c = null;
        }
    }

    public void a(t<?> tVar) {
        synchronized (this.e) {
            this.d = tVar;
            b();
        }
    }

    public void a(R r) {
        synchronized (this.e) {
            if (!r.a().e()) {
                a(r.a());
                b((w) r);
            } else if (this.a != null) {
                as.a().submit(new ay(this, r));
            } else if (c()) {
                this.c.b(r);
            }
        }
    }
}
