package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;

@oi
public class gc extends qb {
    final sz a;
    final gf b;
    private final String c;

    gc(sz szVar, gf gfVar, String str) {
        this.a = szVar;
        this.b = gfVar;
        this.c = str;
        ar.t().a(this);
    }

    public void a() {
        try {
            this.b.a(this.c);
        } finally {
            qw.a.post(new gd(this));
        }
    }

    public void b() {
        this.b.b();
    }
}
