package com.google.android.gms.internal;

public class iy extends ss<jh> {
    private final Object d;
    private final jc e;
    private boolean f;

    public iy(jc jcVar) {
        this.d = new Object();
        this.e = jcVar;
    }

    public void a() {
        synchronized (this.d) {
            if (this.f) {
                return;
            }
            this.f = true;
            a(new iz(this), new sq());
            a(new ja(this), new jb(this));
        }
    }
}
