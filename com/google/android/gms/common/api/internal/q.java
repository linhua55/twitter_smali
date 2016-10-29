package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.s;
import java.util.Map;

class q extends w {
    final /* synthetic */ n a;
    private final Map<h, s> c;

    public q(n nVar, Map<h, s> map) {
        this.a = nVar;
        super(null);
        this.c = map;
    }

    @WorkerThread
    public void a() {
        int a = this.a.d.a(this.a.c);
        if (a != 0) {
            this.a.a.a(new r(this, this.a, new ConnectionResult(a, null)));
            return;
        }
        if (this.a.m) {
            this.a.k.j();
        }
        for (h hVar : this.c.keySet()) {
            hVar.a((s) this.c.get(hVar));
        }
    }
}
