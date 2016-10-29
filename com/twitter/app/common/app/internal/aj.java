package com.twitter.app.common.app.internal;

import com.twitter.database.lru.a;
import com.twitter.database.lru.ac;
import com.twitter.database.lru.g;
import com.twitter.database.lru.k;
import com.twitter.database.lru.p;
import com.twitter.database.lru.x;
import com.twitter.util.object.b;
import cym;
import dbd;

/* compiled from: Twttr */
final class aj implements b<k, ac<?, ?>> {
    final /* synthetic */ x a;

    aj(x xVar) {
        this.a = xVar;
    }

    public ac<?, ?> a(k kVar) {
        return new p(new a(new g(this.a, kVar.a, kVar.b, kVar.e, kVar.c), dbd.d(), cym.a()), kVar.d);
    }
}
