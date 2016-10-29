package com.google.android.gms.internal;

@oi
public final class jq extends kk {
    private final Object a;
    private jv b;
    private jp c;

    public jq() {
        this.a = new Object();
    }

    public void a() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.t();
            }
        }
    }

    public void a(int i) {
        synchronized (this.a) {
            if (this.b != null) {
                this.b.a(i == 3 ? 1 : 2);
                this.b = null;
            }
        }
    }

    public void a(jp jpVar) {
        synchronized (this.a) {
            this.c = jpVar;
        }
    }

    public void a(jv jvVar) {
        synchronized (this.a) {
            this.b = jvVar;
        }
    }

    public void a(kn knVar) {
        synchronized (this.a) {
            if (this.b != null) {
                this.b.a(0, knVar);
                this.b = null;
                return;
            }
            if (this.c != null) {
                this.c.x();
            }
        }
    }

    public void b() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.u();
            }
        }
    }

    public void c() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.v();
            }
        }
    }

    public void d() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.w();
            }
        }
    }

    public void e() {
        synchronized (this.a) {
            if (this.b != null) {
                this.b.a(0);
                this.b = null;
                return;
            }
            if (this.c != null) {
                this.c.x();
            }
        }
    }
}
