package com.twitter.library.database.dm;

import bip;
import cuj;
import java.util.Map;

/* compiled from: Twttr */
class b implements cuj<bip> {
    final /* synthetic */ Map a;
    final /* synthetic */ a b;

    b(a aVar, Map map) {
        this.b = aVar;
        this.a = map;
    }

    public boolean a(bip bip) {
        return (bip == null || bip.d() != this.b.b || this.a.get(bip.h) == null) ? false : true;
    }
}
