package com.twitter.library.api.dm.requests;

import cys;
import defpackage.bkb;

/* compiled from: Twttr */
class g implements cys<Long> {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((Long) obj);
    }

    public void a(Long l) {
        bkb bkb = (bkb) this.a.b.get();
        if (bkb != null) {
            bkb.b(l.longValue());
        }
    }
}
