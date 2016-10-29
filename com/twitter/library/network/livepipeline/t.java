package com.twitter.library.network.livepipeline;

import cfb;
import com.twitter.model.livepipeline.e;
import cys;

/* compiled from: Twttr */
class t implements cys<e> {
    final /* synthetic */ s a;

    t(s sVar) {
        this.a = sVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((e) obj);
    }

    public void a(e eVar) {
        cfb.b("LivePipeline", "Timeout reached without activity. Reset connection.");
        this.a.a.a(false);
    }
}
