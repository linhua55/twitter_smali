package com.twitter.android.provider;

import cgu;
import com.twitter.util.collection.n;
import defpackage.chd;
import sx;

/* compiled from: Twttr */
class b implements sx<String, Object> {
    final /* synthetic */ sx a;
    final /* synthetic */ a b;

    b(a aVar, sx sxVar) {
        this.b = aVar;
        this.a = sxVar;
    }

    public void a(String str, cgu<?> cgu_) {
        cgu a = a.a((cgu) cgu_);
        n d = n.d();
        if (this.b.d.y()) {
            cgu a2 = this.b.b.a(this.b.c);
            d.c(a.b(a2)).c(a.a(a, a2));
        } else {
            d.c(a).c(this.b.a(str));
        }
        this.a.a(str, new chd((Iterable) d.q()));
    }
}
