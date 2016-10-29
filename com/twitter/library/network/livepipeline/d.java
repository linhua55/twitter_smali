package com.twitter.library.network.livepipeline;

import cfb;
import com.twitter.model.livepipeline.h;
import cys;

/* compiled from: Twttr */
class d implements cys<h> {
    final /* synthetic */ b a;

    d(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((h) obj);
    }

    public void a(h hVar) {
        cfb.b("LivePipeline", "Subscription event: " + hVar);
    }
}
