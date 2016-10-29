package com.twitter.app.common.list;

import ark;
import aru;
import com.twitter.android.metrics.f;
import com.twitter.android.metrics.g;
import com.twitter.util.collection.n;
import defpackage.asc;
import java.util.List;

/* compiled from: Twttr */
class o extends n {
    final /* synthetic */ k a;
    private final List<asc> b;

    o(k kVar, String str) {
        this.a = kVar;
        this.b = n.a(g.b("framerate:longscroll:" + str, ark.n, aru.b(), true, 3, kVar), new asc[]{f.a("dropped:" + r0, ark.n, r2, true, 3, kVar)});
    }

    public void a() {
        for (asc j : this.b) {
            j.j();
        }
    }

    public void a(k kVar, int i) {
        if (i == 0) {
            a();
        } else if (i == 1) {
            for (asc i2 : this.b) {
                i2.i();
            }
        }
    }
}
