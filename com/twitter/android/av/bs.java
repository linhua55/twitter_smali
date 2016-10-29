package com.twitter.android.av;

import android.os.Bundle;
import com.twitter.library.api.search.d;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class bs extends z {
    final /* synthetic */ bq a;
    private final WeakReference<bt> b;

    private bs(bq bqVar, bt btVar) {
        this.a = bqVar;
        this.b = new WeakReference(btVar);
    }

    public void a(x xVar) {
        int i;
        this.a.g.k(this.a.d);
        bt btVar = (bt) this.b.get();
        aa aaVar = (aa) xVar.l().b();
        if (aaVar == null || !aaVar.b()) {
            i = 0;
        } else {
            i = ((d) xVar).h();
        }
        Bundle i2 = this.a.e.i();
        i2.putInt(bq.a, i);
        i2.putLong(bq.b, this.a.d);
        if (btVar != null) {
            btVar.a(i, this.a.d);
        }
    }
}
