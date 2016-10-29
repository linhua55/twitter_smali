package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import java.util.Map;

class f implements fj {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        if (this.a.f.j != null) {
            this.a.h.a(this.a.f.i, this.a.f.j, szVar.b(), szVar);
        } else {
            qd.d("Request to enable ActiveView before adState is available.");
        }
    }
}
