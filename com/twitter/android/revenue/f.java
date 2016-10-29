package com.twitter.android.revenue;

import android.support.annotation.VisibleForTesting;
import bbl;
import bbn;
import cto;
import cuj;

@VisibleForTesting
/* compiled from: Twttr */
class f implements cuj<a> {
    private final Iterable<a> a;
    private final float b;

    f(Iterable<a> iterable, float f) {
        this.a = iterable;
        this.b = f;
    }

    public boolean a(a aVar) {
        i iVar = new i(aVar, this.b);
        boolean b = cto.b(cto.a(this.a, iVar), new h(aVar));
        if (b) {
            bbn.a(new bbl(new Exception("duplicate_ad_id_found")).a("duplicate_ad_id", Long.valueOf(aVar.a())));
        }
        return b;
    }
}
