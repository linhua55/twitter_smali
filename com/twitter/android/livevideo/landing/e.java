package com.twitter.android.livevideo.landing;

import bbn;
import defpackage.cjl;
import rx.r;

/* compiled from: Twttr */
class e implements r<cjl> {
    final /* synthetic */ c a;

    e(c cVar) {
        this.a = cVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((cjl) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        bbn.a(th);
    }

    public void a(cjl cjl) {
        if (cjl != null) {
            c.c(this.a).setTitle(cjl.e);
            c.a(this.a, cjl.f);
            c.a(this.a, cjl);
            c.b(this.a, cjl);
        }
    }
}
