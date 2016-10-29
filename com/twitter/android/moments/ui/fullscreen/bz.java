package com.twitter.android.moments.ui.fullscreen;

import acc;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
class bz extends acc<ao<d, com.twitter.model.moments.d>> {
    final /* synthetic */ x a;
    final /* synthetic */ bt b;

    bz(bt btVar, x xVar) {
        this.b = btVar;
        this.a = xVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((ao) obj);
    }

    public void a(ao<d, com.twitter.model.moments.d> aoVar) {
        if (aoVar.c()) {
            d dVar = (d) aoVar.a();
            a aVar = dVar.a;
            int intValue = ((Integer) this.a.c(Integer.valueOf(dVar.a()))).intValue();
            if (bt.h(this.b) != null && bt.h(this.b).f()) {
                bt.a(this.b, aVar);
                bt.a(this.b, intValue);
                return;
            } else if (!bt.a(this.b).isFinishing()) {
                bt.a(this.b, aVar, bt.f(this.b), x.a(Integer.valueOf(intValue)));
                return;
            } else {
                return;
            }
        }
        bt.i(this.b).a(2131363101);
    }
}
