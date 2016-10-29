package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.ws;
import com.google.android.gms.internal.wv;
import java.util.ArrayList;
import java.util.List;

class cb implements am {
    wv a;
    List<Long> b;
    List<ws> c;
    long d;
    final /* synthetic */ bx e;

    private cb(bx bxVar) {
        this.e = bxVar;
    }

    private long a(ws wsVar) {
        return ((wsVar.c.longValue() / 1000) / 60) / 60;
    }

    public void a(wv wvVar) {
        bm.a(wvVar);
        this.a = wvVar;
    }

    boolean a() {
        return this.c == null || this.c.isEmpty();
    }

    public boolean a(long j, ws wsVar) {
        bm.a(wsVar);
        if (this.c == null) {
            this.c = new ArrayList();
        }
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (this.c.size() > 0 && a((ws) this.c.get(0)) != a(wsVar)) {
            return false;
        }
        long e = this.d + ((long) wsVar.e());
        if (e >= ((long) this.e.d().T())) {
            return false;
        }
        this.d = e;
        this.c.add(wsVar);
        this.b.add(Long.valueOf(j));
        return this.c.size() < this.e.d().U();
    }
}
