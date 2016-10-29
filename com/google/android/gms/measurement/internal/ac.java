package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;

class ac {
    private final vj a;
    private long b;

    public ac(vj vjVar) {
        bm.a(vjVar);
        this.a = vjVar;
    }

    public void a() {
        this.b = this.a.b();
    }

    public boolean a(long j) {
        return this.b == 0 || this.a.b() - this.b >= j;
    }

    public void b() {
        this.b = 0;
    }
}
