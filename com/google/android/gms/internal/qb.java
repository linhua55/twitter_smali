package com.google.android.gms.internal;

import java.util.concurrent.Future;

@oi
public abstract class qb implements rj<Future> {
    private final Runnable a;
    private volatile Thread b;
    private boolean c;

    public qb() {
        this.a = new qc(this);
        this.c = false;
    }

    public qb(boolean z) {
        this.a = new qc(this);
        this.c = z;
    }

    public abstract void a();

    public abstract void b();

    public final void d() {
        b();
        if (this.b != null) {
            this.b.interrupt();
        }
    }

    public /* synthetic */ Object e() {
        return g();
    }

    public final Future g() {
        return this.c ? qq.a(1, this.a) : qq.a(this.a);
    }
}
