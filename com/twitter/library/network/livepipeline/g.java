package com.twitter.library.network.livepipeline;

import cfb;
import cyr;

/* compiled from: Twttr */
class g implements cyr {
    final /* synthetic */ String a;
    final /* synthetic */ b b;

    g(b bVar, String str) {
        this.b = bVar;
        this.a = str;
    }

    public void a() {
        this.b.f.remove(this.a);
        this.b.e(this.a);
        cfb.b("LivePipeline", "Topic " + this.a + " removed as no observers exist currently");
    }
}
