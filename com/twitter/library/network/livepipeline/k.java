package com.twitter.library.network.livepipeline;

import cfb;
import cys;

/* compiled from: Twttr */
class k implements cys<Throwable> {
    final /* synthetic */ b a;

    k(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((Throwable) obj);
    }

    public void a(Throwable th) {
        cfb.b("LivePipeline", "Resubscribe error: " + th.getMessage());
    }
}
