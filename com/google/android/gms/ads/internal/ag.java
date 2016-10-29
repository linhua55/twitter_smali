package com.google.android.gms.ads.internal;

import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import java.util.Map;

final class ag implements fj {
    final /* synthetic */ kq a;
    final /* synthetic */ q b;
    final /* synthetic */ kt c;

    ag(kq kqVar, q qVar, kt ktVar) {
        this.a = kqVar;
        this.b = qVar;
        this.c = ktVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        Object b = szVar.b();
        if (b != null) {
            try {
                if (this.a != null) {
                    if (this.a.k()) {
                        ab.a(szVar);
                        return;
                    }
                    this.a.a(m.a(b));
                    this.b.a();
                } else if (this.c == null) {
                } else {
                    if (this.c.i()) {
                        ab.a(szVar);
                        return;
                    }
                    this.c.a(m.a(b));
                    this.b.a();
                }
            } catch (Throwable e) {
                qd.d("Unable to call handleClick on mapper", e);
            }
        }
    }
}
