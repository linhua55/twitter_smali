package com.twitter.library.network.livepipeline;

import bbn;
import cys;

/* compiled from: Twttr */
class p implements cys<Throwable> {
    final /* synthetic */ b a;

    p(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((Throwable) obj);
    }

    public void a(Throwable th) {
        bbn.a(th);
    }
}
