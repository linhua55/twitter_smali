package com.google.android.gms.internal;

import com.google.android.gms.common.internal.bm;

public class jc extends ss<hx> {
    private final Object d;
    private iw<hx> e;
    private boolean f;
    private int g;

    public jc(iw<hx> iwVar) {
        this.d = new Object();
        this.e = iwVar;
        this.f = false;
        this.g = 0;
    }

    public iy a() {
        iy iyVar = new iy(this);
        synchronized (this.d) {
            a(new jd(this, iyVar), new je(this, iyVar));
            bm.a(this.g >= 0);
            this.g++;
        }
        return iyVar;
    }

    protected void b() {
        boolean z = true;
        synchronized (this.d) {
            if (this.g < 1) {
                z = false;
            }
            bm.a(z);
            qd.e("Releasing 1 reference for JS Engine");
            this.g--;
            d();
        }
    }

    public void c() {
        boolean z = true;
        synchronized (this.d) {
            if (this.g < 0) {
                z = false;
            }
            bm.a(z);
            qd.e("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f = true;
            d();
        }
    }

    protected void d() {
        synchronized (this.d) {
            bm.a(this.g >= 0);
            if (this.f && this.g == 0) {
                qd.e("No reference is left (including root). Cleaning up engine.");
                a(new jf(this), new sq());
            } else {
                qd.e("There are still references to the engine. Not destroying.");
            }
        }
    }
}
