package com.google.android.gms.internal;

import java.util.concurrent.Future;

@oi
public final class ov {
    sz a;
    iy b;
    public final fj c;
    public final fj d;
    private final Object e;
    private String f;
    private String g;
    private sg<pa> h;

    public ov(String str, String str2) {
        this.e = new Object();
        this.h = new sg();
        this.c = new ow(this);
        this.d = new ox(this);
        this.g = str2;
        this.f = str;
    }

    public iy a() {
        return this.b;
    }

    public void a(iy iyVar) {
        this.b = iyVar;
    }

    public void a(sz szVar) {
        this.a = szVar;
    }

    public Future<pa> b() {
        return this.h;
    }

    public void c() {
        if (this.a != null) {
            this.a.destroy();
            this.a = null;
        }
    }
}
