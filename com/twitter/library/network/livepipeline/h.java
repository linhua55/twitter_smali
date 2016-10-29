package com.twitter.library.network.livepipeline;

import com.twitter.model.livepipeline.e;
import cyw;

/* compiled from: Twttr */
class h implements cyw<e, Boolean> {
    final /* synthetic */ String a;
    final /* synthetic */ b b;

    h(b bVar, String str) {
        this.b = bVar;
        this.a = str;
    }

    public Boolean a(e eVar) {
        return Boolean.valueOf(eVar.e.equals(this.a));
    }
}
