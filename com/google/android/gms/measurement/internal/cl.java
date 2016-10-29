package com.google.android.gms.measurement.internal;

abstract class cl extends ck {
    private boolean a;
    private boolean b;
    private boolean c;

    cl(bx bxVar) {
        super(bxVar);
        this.n.a(this);
    }

    boolean E() {
        return this.a && !this.b;
    }

    boolean F() {
        return this.c;
    }

    protected void G() {
        if (!E()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void H() {
        if (this.a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        a();
        this.n.C();
        this.a = true;
    }

    protected abstract void a();
}
